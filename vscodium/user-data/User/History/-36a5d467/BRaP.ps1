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
            Write-Output $diff
        }
    }    
}


$commitList = $items | Out-GridView -Title "Select an item" -OutputMode Single

if ($commitList) {
    $text = "You selected: $commitList"
} else {
    $text = "No item selected."
}

Write-Output $text