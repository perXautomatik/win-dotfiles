
#copy branch
git checkout -b $bkpBranchName

#extract folder path
git filter-repo --subdirectory-filter $folderName --refs $bkpBranchName

# forget path
git filter-repo --invert-paths --path $folderName