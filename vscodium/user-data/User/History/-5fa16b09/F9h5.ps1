#Here are some guidelines for when to delete or update replace refs:

If you are rewriting a large number of commits, you may want to consider deleting all existing replace refs. This will ensure that there are no conflicts.
If you are only rewriting a few commits, you may want to consider updating existing replace refs. This will help to preserve the history of the repository.
If you are using git filter-repo to remove sensitive data, you may want to delete all existing replace refs. This will help to prevent the sensitive data from being accidentally exposed.


#copy branch
git checkout -b $bkpBranchName

#extract folder path
git filter-repo --subdirectory-filter $folderName --refs $bkpBranchName

# forget path
git filter-repo --invert-paths --path $folderName