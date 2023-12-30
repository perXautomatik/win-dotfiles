# Define a function to group child items by parent folder
Function Group-ChildFolder ($Path) {
    Get-ChildItem -Path $Path -Recurse | Group-Object -Property DirectoryName
}

<# Define the root path to compare #>
$Root = 'B:\PF\Archive\ps1\git'

<# Get the groups of child items for each subfolder #>
$Groups = Group-ChildFolder -Path $Root

<# Define a hashtable to store the file hash objects for each subfolder #>
$FileHashes = @{}

<# Loop through each group and get the file hash objects #>
foreach ($Group in $Groups) { 
    # Get the subfolder name 
    $SubFolder = $Group.Name 
    # Get the file hash objects for the subfolder 
    $FileHashes[$SubFolder] = @(Get-ChildItem -Path $Group.Group.FullName -File | %{ Get-FileHash -Path $_ -Algorithm SHA256})  
}
<# 
Define a hashtable to store the file hash matches for each pair of subfolders #>
$FileHashMatches = @{}

<# Loop through each pair of subfolders #>
foreach ($SubFolder1 in $FileHashes.Keys) {

    foreach ($SubFolder2 in $FileHashes.Keys) {
        # Skip if the subfolders are the same
        if ($SubFolder1 -eq $SubFolder2) { continue }

        # Get the depth of each subfolder by counting the slashes in the path
        $Depth1 = ($SubFolder1 -split '\\').Count
        $Depth2 = ($SubFolder2 -split '\\').Count

        # Skip if the subfolder1 is a possible child of subfolder2
        if ($Depth1 -gt $Depth2) { continue }
        # Sort the subfolder names alphabetically and join them with a comma
        $Pair = ($SubFolder1, $SubFolder2 | Sort-Object) -join ','
        # Skip if the pair is already processed
        if ($FileHashMatches.ContainsKey($Pair)) { continue }

        # Compare the file hash objects for the pair and get the ones that are equal
        $FileHashMatches[$Pair] =
             Compare-Object
              -ReferenceObject $FileHashes[$SubFolder1]
              -DifferenceObject $FileHashes[$SubFolder2] 
              -Property Hash 
              -PassThru 
              -IncludeEqual 
              | Where-Object { $_.SideIndicator -eq '==' }
    }

}

<# Sort the file hash matches by count in descending order #>
$SortedHashMatches = $FileHashMatches.GetEnumerator() | Where-Object { 
    $.Value.Count -GT 0
 } | Sort-Object -Property @{
    Expression = { $.Value.Count };
    Descending = $true }

<#Display the sorted matches#>
$SortedHashMatches | Format-Table -Property Name, @{Label = 'MatchCount'; Expression = { $.Value.Count } }, @{Label = 'MatchedFiles'; Expression = { $.Value.Path -replace “$Root\”, '' } } -AutoSize

<#
This code is based on the answer by Lieven Keersmaekers1 and the question by Clint McGuire2. You can also find more information about the Compare-Object cmdlet in the Microsoft Docs3. I hope this helps you with your task. 😊
#>