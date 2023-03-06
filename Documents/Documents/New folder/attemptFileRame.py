import os
import re

pat = "No\. (\d\d\-\d\d\d\d)"
mydir = 'mydir'
for arch in os.listdir(mydir):
    archpath = os.path.join(mydir, arch)
    with open(archpath) as f:
        txt = f.read()
    s = re.search(pat, txt)
    name = s.group(1)
    newpath = os.path.join(mydir, name)
    os.rename(archpath, newpath)