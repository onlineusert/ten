#!/bin/bash

dirsource=default
dirdestination=dir2
#cd $dirsource

#find ./default -type d -links 2 -exec mkdir -p  "./dir2/{}" \;

#find -type d -exec mkdir -p "../dir2/{}" \;

find ./default -type d | xargs -I{} mkdir -p "./dir2/{}"
mv ./dir2/default  ./dir2/.tmp_default
mv ./dir2/.tmp_default/* ./dir2/
rm -r ./dir2/.tmp_default
#rmdir default
