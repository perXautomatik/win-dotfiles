
# Function to initialize and get information of a submodule
function Init-Submodule($submodulePath) {
    # Step inside the submodule folder
    Push-Location $submodulePath

    # Add an initial commit to the submodule
    Git add .
    Git commit -m "init"

    # Get the remote URL of the submodule
    $submoduleUrl = Git remote get-url origin

    # Get the branch of the submodule
    $submoduleBranch = Git rev-parse --abbrev-ref HEAD
        
    # Generate a unique name for the submodule based on the path
    $sqx = (@((($submoduleUrl -split '/') | select -Last 1) -split '.git'))[0]
    if ($sqx) {
        $ddy = ( $submodulePath -split '\\' | select -last 1 )
        $submoduleName = "$sqx-$ddy"
    }
    else {
        $submoduleName = $submodulePath.Replace("\", "-")
    }
    

    # Step out of the submodule folder
    Pop-Location

    (Get-ChildItem -Path $submodulePath -Recurse -Filter “.git”)

    # Recursively add submodules for each folder within the current folder
    Add-Submodules $submodulePath

    # Add an initial commit to the submodule
    Git add .
    Git commit -m "submodule"
    git fsck

    # Return the information as a custom object
    return [PSCustomObject]@{
        Url = $submoduleUrl
        Branch = $submoduleBranch
        Name = $submoduleName
    }
}

function Add-Submodules($pathq) { # Get all folders in the current path 
    
    # Iterate through each folder
    foreach ($folder in (Get-ChildItem -Path $pathq -Recurse -Filter “.git”)) {
        # Check if the folder contains a ".git" directory
        $uu = ( $folder.FullName | Split-Path -Parent )
        
        if (Test-Path -Path $uu -PathType Container) {
            # Step inside the folder
            Push-Location $uu 

            # Initialize and get information of the submodule
            $submoduleInfo = Init-Submodule $uu

            # Try to add the submodule to the parent repository with the specified name, branch, force, and reference options
            $sName = $submoduleInfo.Name;
            $sBranch = $submoduleInfo.Branch;
            $sUrl = $submoduleInfo.Url;
            
            try {
                Git submodule add --name $sName --branch $sBranch $sUrl $uu
            }
            catch {
                # If an error occurs, write a warning message and continue
                Write-Warning "Could not add submodule $sName : $_"
                continue
            }

            # Set the branch of the submodule
            Git submodule set-branch --branch $sBranch $sName

            # Step out of the folder
            Pop-Location

        }
    }
}

# Start the recursive add-submodules process from the specified path
$rootPath = "B:\GitFolders"
Add-Submodules $rootPath
