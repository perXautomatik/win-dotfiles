<# Here are some guidelines for when to delete or update replace refs:

If you are rewriting a large number of commits, you may want to consider deleting all existing replace refs. This will ensure that there are no conflicts.
If you are only rewriting a few commits, you may want to consider updating existing replace refs. This will help to preserve the history of the repository.
If you are using git filter-repo to remove sensitive data, you may want to delete all existing replace refs. This will help to prevent the sensitive data from being accidentally exposed.
#>

function FunctionName {
    param (
        $pathx
    )

    #Git repository to read from
    git filter-repo --source $pathx

    #copy branch
    git checkout -b $bkpBranchName

    #extract folder path
    git filter-repo --subdirectory-filter $folderName --refs $bkpBranchName

    # forget path
    git filter-repo --invert-paths --path $folderName
}


[Environment]::SetEnvironmentVariable('GIT_REDIRECT_STDERR', '2>&1', 'Process')

function gitStatuses() {

Start-Process es -ArgumentList "wfn:child:config" -PassThru -NoNewWindow -Wait -RedirectStandardOutput "B:\Users\20231014190350309\conf.txt" -WorkingDirectory "B:\Users\20231014190350309"
$conf = Get-Content "B:\Users\20231014190350309\conf.txt"

Start-Process es -ArgumentList "wfn:child:head" -PassThru -NoNewWindow -Wait -RedirectStandardOutput "B:\Users\20231014190350309\head.txt" -WorkingDirectory "B:\Users\20231014190350309"
$head = Get-Content "B:\Users\20231014190350309\head.txt"


return ($conf | ? { $_ -in $head } | % { $_ -replace '&','"&"' } | % { 
    $objx = Get-Item $_ -ErrorAction SilentlyContinue
    $objx
    })
}

$gitz = gitStatuses


function Create-FolderWithNumber($folderName, $startNumber = 1) {
    # Check if the folder already exists.
    if (Test-Path $folderName) {
        # If the folder exists, append a number to the end of the name and call the function again.
        $folderName = "$folderName-$startNumber"
        Create-FolderWithNumber $folderName $startNumber + 1
    } else {
        # If the folder does not exist, create it.
        New-Item -ItemType Directory -Path $folderName
    }
}

function Ensure-Path($path) {
    if (-Not (Test-Path $path)) {
        Create-FolderWithNumber $path
    }
}


function fx(){
    set-location "B:\Users\20231014190350309" ;
}

$withStatuses = $gitz | % {
        $valx = $_;
         $objx |% {

                if($_.name -like '*.git')
                {
                  $valx = $_.parent    
                }
                else
                {
                  $valx = $_.name
                }
            }
            Add-Member -InputObject $objx -MemberType NoteProperty -Name Groupx -Value $valx -Force
            $x = $_.fullname 
            $y = ("from"+"'");
            $g = "from"
            $y2 = ("branch"+"'");
            $g2 = "branch"
            $y3 = (" at "+"'");
            $g3 = " at "
            $y4 = (" read "+"'");
            $g4 = " read "
            $y5 = (" object "+"'");
            $g5 = " object "
            $y6 = (" ");
            $g6 = ":"

            $stx = ((((((invoke-expression "git --git-dir=$x status" | select -First 1) -replace $g,$y) -replace $g2,$y2) -replace $g3,$y3) -replace $g4,$y4) -replace $g5,$y5) -replace $g6,$y6
            $regex = '[^\w ]+'
            $st = ( $stx -split $regex )[0]
            Add-Member -InputObject $objx -MemberType NoteProperty -Name GitStatus -Value $stx  -Force
            Add-Member -InputObject $objx -MemberType NoteProperty -Name GitStatusx -Value $st  -Force
            $objx          
    }
    
$withStatuses | select -First 10 | % { fx ; Ensure-Path $_.gitStatusx ; set-location $_.gitStatusx ; Ensure-Path $_.groupx ; $_.groupx ; git init --separate-git-dir=$_.fullname }
    #| Group-Object -Property GitStatusx,Groupx | Select-Object -ExpandProperty Group |  select -Property groupx,gitstatus,GitStatusx,fullname



# Create a folder with the name "My Folder".
Create-FolderWithNumber "My Folder"


function Bucket-ItemsNoDupes($items) {
    # Create a hash table to store the groups.
    $groups = @{}

    # Iterate over the items and add them to the hash table.
    foreach ($item in $items) {
        # Create a new group if one does not exist for the item.
        if (!$groups.ContainsKey($item)) {
            $groups[$item] = @()
        }

        # Add the item to the group.
        $groups[$item] += $item
    }

    # Get a list of the group keys.
    $groupKeys = $groups.Keys

    # Create a list to store the grouped items.
    $groupedItems = @()

    # Iterate over the group keys and create a new group for each key.
    foreach ($groupKey in $groupKeys) {
        # Get the group for the key.
        $group = $groups[$groupKey]

        # Create a new group if the current group has more than 20 items.
        if ($group.Count -gt 20) {
            $newGroup = New-Object System.Collections.ArrayList
            $groupedItems += $newGroup
        }

        # Add the items in the group to the grouped items list.
        foreach ($item in $group) {
            $groupedItems += $item
        }
    }

    # Return the grouped items list.
    return $groupedItems
}