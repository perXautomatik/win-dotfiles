function cdx ($path)
{
    if((get-item $path).name -eq '.git' )
    {
        $path = ($path | split-path -parent)
    }

    cd $path
}

# Function to initialize and get information of a submodule
function Init-Submodule($submodulePath) {
    # Step inside the submodule folder
    cdx $submodulePath

    # Add an initial commit to the submodule
    Git add .
    Git commit -m "init"

    Add-Submodules $submodulePath
    
    cdx $submodulePath
    # Get the remote URL of the submodule
    $submoduleUrl = Git remote get-url origin

    if (!($submoduleUrl)) {
        $submoduleUrl = git remote -v | select -last 1 | Select-Object -ExpandProperty Url    
    }
    
    # Get the branch of the submodule
    $submoduleBranch = Git rev-parse --abbrev-ref HEAD
        
    # Generate a unique name for the submodule based on the path
    $sqx = (@((($submoduleUrl -split '/') | select -Last 1) -split '.git'))[0]
    if ($sqx) {
        $ddy = ( $submodulePath -split '\\' | select -last 1 )
        $submoduleName = "$sqx-$ddy"
    }
    else {
        $submoduleName = ([string]$submodulePath).Replace("\", "-")
    }

    # Add an initial commit to the submodule
    git status
    Git add .
    Git commit -m "submodule"
    git fsck
    
    # Step out of the submodule folder

    # Return the information as a custom object
    return [PSCustomObject]@{
        Url = $submoduleUrl
        Branch = $submoduleBranch
        Name = $submoduleName
    }
}

function Add-Submodules($pathq) { 
    
    # Step inside the folder
    cdx $pathq

    #garantied to be inside a folder with a git Object inside it

    # if folder contains other directories than git
    (Get-ChildItem -Path $pathq -Directory -Exclude ".git") | %{
            (Get-ChildItem -Path $_ -Recurse -Filter “.git”) | %{  
                
                        if((get-item $_).name -eq '.git' )
                        {
                            $_ = ($_ | split-path -parent)
                        }
                
                        # Initialize and get information of the submodule
                        $submoduleInfo = Init-Submodule $_                  
                        cdx $pathq
                        # Try to add the submodule to the parent repository with the specified name, branch, force, and reference options
                        $sName = $submoduleInfo.Name;
                        $sBranch = $submoduleInfo.Branch;
                        $sUrl = $submoduleInfo.Url;

                        if($sUrl)
                        {
                           
                        }
                        else {
                            $sUrl = $_;
                        }

                        $_ = Resolve-Path -Path $_ -Relative
                        

                        try {
                            Git submodule add --name $sName --branch $sBranch -- $sUrl $_
                        }
                        catch {
                            # If an error occurs, write a warning message and continue
                            Write-Warning "Could not add submodule $sName : $_"
                            continue
                        }

                }

            }

        }


# Start the recursive add-submodules process from the specified path
$rootPath = "B:\PF\Archive"

    Add-Submodules $rootPath 

