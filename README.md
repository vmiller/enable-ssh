# To build pkgsinfo :

makepkginfo --nopkg \
 --installcheck_script installcheck_script.sh \
 --postinstall_script postinstall_script.sh \
 --uninstall_script uninstall_script.sh \
 --unattended_install \
 --unattended_uninstall \
 --uninstall_method uninstall_script \
 --name Enable_SSH \
 --pkgvers 1.0 > Enable_SSH-1.0.plist

Add `<key>uninstallable</key><true/>` to the plist and copy to the munki repo.  Remember to makecatalogs or it didn't happen.