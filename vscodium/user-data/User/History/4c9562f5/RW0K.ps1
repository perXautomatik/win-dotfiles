Windows:
scoop install diffsitter
Once diffsitter is installed, you can configure it to integrate with Git. To do this, add the following lines to your .gitconfig file:

[diff]
tool = diffsitter
[difftool]
prompt = false
[difftool "diffsitter"]
cmd = diffsitter "$LOCAL" "$REMOTE"
This will tell Git to use diffsitter as the default difftool.

Once you have configured diffsitter, you can start using it to view diffs between commits. To do this, simply run the git difftool command. Git will then open diffsitter with the two commits that you want to compare.

Diffsitter is a powerful tool for viewing diffs between commits. It provides a number of features that are not available in the default Git difftool, such as syntax highlighting and the ability to navigate between different files and lines of code.

Here are some additional tips for using diffsitter:

You can use the -s option to specify the specific languages that you want diffsitter to highlight. For example, to highlight diffs in Python and JavaScript, you would run the following command:
git difftool -s python,javascript
You can use the -f option to filter the output of diffsitter. For example, to filter out all diffs that are less than 5 lines long, you would run the following command:
git difftool -f "-l +5"
You can use the -p option to enable diffsitter's patch mode. This mode will show you a unified diff of the changes between the two commits.
Overall, diffsitter is a powerful and versatile tool for viewing diffs between commits. It is a good choice for developers who want a more comprehensive and informative diff experience.