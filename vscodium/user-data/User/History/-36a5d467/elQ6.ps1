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

$invokation = invoke-git 'git log --pretty=format:"%h" --author-date-order --date=short --follow -- :CollectionHolder.cs'

if (($invokation | Measure-Object).Count -le 4 ) {
    $commits = $($invokation).Split("`n")    
}
else {
    $commits = $invokation
}

$hashMap = New-Object -TypeName "System.Collections.Generic.Dictionary[string,string]"

$commits | ForEach-Object {
    $commit = $_
    $shouldInclude = $false;
    $diff = git show $commit -p -- :CollectionHolder.cs    
    for ($i = 0; $i -lt $diff.Length; $i++) {
        $row = $diff[$i]

        if ($row -match '.*CheckGlobalStock.*') {
            $shouldInclude = $true;            
        }        
    }
    if ($shouldInclude) 
    {
        $regex = '^+.*CheckGlobalStock[(][)].*';
        $u = ($diff | Select-Object -Skip 4)
            $x = [array]::IndexOf($u, ($u | Where-Object { $_ -match $regex } | Select-Object -First 1 ) )
        $uu = ($u | Select-Object -Skip $x)
        $hashMap[$commit]=($uu -join “`n”)
    }

}

$outputs = $hashMap.GetEnumerator() | Out-GridView  -Title "Select an item"

if ($outputs) {
    $selectedCommit = $outputs.Key
    $selectedDiff = $outputs.Value
    Write-Output "You selected commit $selectedCommit with diff: $selectedDiff"
} else {
    Write-Output "No item selected."
}