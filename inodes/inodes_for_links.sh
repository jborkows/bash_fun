rm -rf /tmp/inodes_links_fun 2> /dev/null || true
mkdir /tmp/inodes_links_fun
(cd  /tmp/inodes_links_fun
touch original.txt
ln original.txt hardlink.txt
ln -s original.txt soft_link.txt
ls -il1

)
