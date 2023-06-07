
This directory contains root and intermediate certificates required to properly recognize
OTC S.A. digital signature on application and driver files. If your machine is updated properly
the certificates are already installed and you don't need to do anything.

However, if you are having trouble using kernel mode drivers such as wfflt.sys filter
(mapping files from client) or other Winflector EXE/DLL/SYS/CAT files you can use certinst.exe
tool to install certificates.

Usage:

In command prompt window (cmd.exe) change current directory to the directory with
certinst.exe (cd \winflector\tools\certinst) and type "certinst" to run it.
Answer YES to UAC prompt if the one appears. Tool will install all
*.crt (certificate) files located in current directory to the local computer
root certificate store.



