# https://github.com/tokuhirom/git-xlsx-textconv
# https://github.com/t-yuki/gooxml

go get github.com/t-yuki/gooxml/cmd/pptx2md
go get github.com/tokuhirom/git-xlsx-textconv
sudo yum install xmlstarlet
sudo install `which pptx2md` /usr/local/bin/
sudo install `which git-xlsx-textconv` /usr/local/bin/

sudo tee <<'EOF' /usr/local/bin/xmindtotxt
#!/bin/bash
# https://gist.github.com/magnusstahre/1175505
unzip -p "$1" content.xml|xmlstarlet fo|grep title
EOF
sudo chmod 755 /usr/local/bin/xmindtotxt

wget http://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/git18-1.8.5.5-4.ius.centos6.x86_64.rpm
wget http://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/perl-Git18-1.8.5.5-4.ius.centos6.noarch.rpm
yum remove git perl-Git
yum localinstall git18-1.8.5.5-4.ius.centos6.x86_64.rpm perl-Git18-1.8.5.5-4.ius.centos6.noarch.rpm

sudo yum install catdoc poppler-utils
wget -O docx2txt.tar 'http://docx2txt.cvs.sourceforge.net/viewvc/docx2txt/docx2txt/?view=tar'
tar -xf docx2txt.tar
(cd docx2txt; sudo make)

grep pptx /etc/gitconfig || ((echo '*.pptx diff=pptx' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "pptx"]
    binary = true
    textconv = /usr/local/bin/pptx2md
EOF
grep xlsx /etc/gitconfig || ((echo '*.xlsx diff=xlsx' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "xlsx"]
    binary = true
    textconv = /usr/local/bin/git-xlsx-textconv
EOF
grep xmind /etc/gitconfig || ((echo '*.xmind diff=xmind' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "xmind"]
    binary = true
    textconv = /usr/local/bin/xmindtotxt
EOF
grep catdoc /etc/gitconfig || ((echo '*.doc diff=doc' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "doc"]
    binary = true
    textconv = catdoc
EOF
grep docx2txt /etc/gitconfig || ((echo '*.docx diff=docx' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "docx"]
    binary = true
    textconv = sh -c '/usr/local/bin/docx2txt.pl "$0" -'
EOF
grep pdftotext /etc/gitconfig || ((echo '*.pdf diff=pdf' | sudo tee -a /etc/gitattributes) && sudo tee <<'EOF' -a /etc/gitconfig)
[diff "pdf"]
    binary = true
    textconv = sh -c 'pdftotext -layout "$0" -enc UTF-8 -'
EOF

