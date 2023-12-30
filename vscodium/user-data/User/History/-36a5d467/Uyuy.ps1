Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

set-location "B:\PF\CSharpVisualStudio\repos\karlstad\KarlstadButik"

function Invoke-Git {
    param(
        [Parameter(Mandatory=$false)]
        [string]$Command = "status" # The git command to run
    )

    if ($Command -eq "") {
        $Command = "status"
    } elseif ($Command.StartsWith("git ")) {
        $Command = $Command.Substring(4)
    }

    # Run the command and capture the output
    $output = Invoke-Expression -Command "git $Command 2>&1" -ErrorAction Stop 

    # Check the exit code and throw an exception if not zero
    if ($LASTEXITCODE -ne 0) {
        $errorMessage = $Error[0].Exception.Message ?? $output.targetObject
        throw "Error message: $errorMessage; Git command failed: git $Command"
    }

    # return the output to the host
    $output
}

$invokation = invoke-git 'git log --pretty=format:"%h" --author-date-order --date=short --no-merges --follow -- :CollectionHolder.cs'

if (($invokation | Measure-Object).Count -le 4 ) {
    $commits = $($invokation).Split("`n")    
}
else {
    $commits = $invokation
}



$commitList = $commits | ForEach-Object {
    $commit = $_
    $diff = git show $commit -p -- :CollectionHolder.cs
    
    for ($i = 0; $i -lt $diff.Length; $i++) {
        $row = $diff[$i]
        if ($row -match '.*CheckGlobalStock.*') {
            Write-Output $commit
        }
    }    
}

$commitIndex = 0

$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Multiline = $true
$textBox.ScrollBars = "Vertical"
$textBox.Dock = "Fill"
$textBox.Text = $(git show $($commitList[$commitIndex]) -p -- :CollectionHolder.cs)
$window.Controls.Add($textBox)

$upButton = New-Object System.Windows.Forms.Button
$upButton.Text = "Up"
$upButton.Dock = "Top"
$upButton.Add_Click({
    if ($commitIndex -gt 0) {
        $commitIndex--
        $textBox.Text = $(git show $($commitList[$commitIndex]) -p -- :CollectionHolder.cs)
        $label.Text = “Commit Index: $commitIndex”
    }
})
$window.Controls.Add($upButton)

$downButton = New-Object System.Windows.Forms.Button
$downButton.Text = "Down"
$downButton.Dock = "Bottom"
$downButton.Add_Click({
    if ($commitIndex -lt ($commitList.Length - 1)) {
        $commitIndex++
        $textBox.Text = $(git show $($commitList[$commitIndex]) -p -- :CollectionHolder.cs)
        $label.Text = “Commit Index: $commitIndex”
    }
})
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Test"
$Form.Size = New-Object System.Drawing.Size(300,300)
$Form.StartPosition = "CenterScreen"
$Form.BackColor = "Green"

$window = New-Object System.Windows.Forms.Form
$window.Text = "Git Log Viewer"
$window.Width = 800
$window.Height = 600

$label = New-Object System.Windows.Forms.Label 
$label.Dock = “Right” 

$window.Controls.Add($downButton)

$window.Controls.Add($label)
$Form.Topmost = $True
$Form.Add_Shown({$Form.Activate()})

while ($True)
{

[void] $Form.ShowDialog()

$Form.Text = “Commit Index: $commitIndex” 
    Start-Sleep -s 2

}
