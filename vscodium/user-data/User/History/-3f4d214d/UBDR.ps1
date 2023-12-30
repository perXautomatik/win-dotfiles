# Define a function to group child items by parent folder
Function Group-ChildFolder ($Path) {
    Get-ChildItem -Path $Path -Recurse | Group-Object -Property DirectoryName
}

# Define the root path to compare
$Root = "B:\PF\Archive\ps1\git"
# Get the groups of child items for each subfolder
$Groups = Group-ChildFolder -Path $Root

# Define a hashtable to store the file name counts for each subfolder
$FileCounts = @{}

# Loop through each group and count the file names
foreach ($Group in $Groups) {
    # Get the subfolder name
    $SubFolder = $Group.Name
    # Initialize the file name count for the subfolder
    $FileCounts[$SubFolder] = @{}
    # Loop through each file in the group
    foreach ($File in $Group.Group) {
        # Get the file name
        $FileName = $File.Name
        # Increment the file name count for the subfolder
        $FileCounts[$SubFolder][$FileName]++
    }
}

# Define a hashtable to store the file name matches for each pair of subfolders
$FileMatches = @{}

# Loop through each pair of subfolders
foreach ($SubFolder1 in $FileCounts.Keys) {
    
    foreach ($SubFolder2 in $FileCounts.Keys) {
        # Skip if the subfolders are the same
        if ($SubFolder1 -eq $SubFolder2) { continue }
        # Sort the subfolder names alphabetically and join them with a comma
        $Pair = ($SubFolder1, $SubFolder2 | Sort-Object) -join ","
        # Skip if the pair is already processed
        if ($FileMatches.ContainsKey($Pair)) { continue }

        # Initialize the file name match count for the pair
        $FileMatches[$Pair] = 0
        # Loop through each file name in the first subfolder
        foreach ($FileName in $FileCounts[$SubFolder1].Keys) {
            # Check if the file name exists in the second subfolder
            if ($FileCounts[$SubFolder2].ContainsKey($FileName)) {
                # Increment the file name match count for the pair
                $FileMatches[$Pair]++
            }
        }
    }
}

# Sort the file name matches by count in descending order
$SortedMatches = $FileMatches.GetEnumerator() | Sort-Object -Property Value -Descending

# Display the sorted matches
$SortedMatches | Format-Table -Property Name, Value -AutoSize
