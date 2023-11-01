git remote add 'C:\Users\chris\AppData\Roaming\Scooter Software\Beyond Compare 4' uptodate
git remote add uptodate 'C:\Users\chris\AppData\Roaming\Scooter Software\Beyond Compare 4'
git config lfs.allowincompletepush true
git remote add uptodate 'C:\Users\chris\AppData\Roaming\Scooter Software\Beyond Compare 4'
git filter-repo
git --help
git help -a
git subtree pull --prefix 'Roaming/Vortex/' 'https://github.com/perXautomatik/AppData.git' WhatpulseX
git for-each-ref --format="%(refname)" refs/original/ |   xargs -n 1 git update-ref -d
git reflog expire --verbose --expire=0 --all && git gc --prune=0
git add -u
git add .
git config core.sparseCheckout true
echo "Sample Applications/DataBindingDemo/" >> .git/info/sparse-checkout
git pull origin master
git pull origin master
git pull origin master -force
git pull origin master --force
git rm --cached -r .vscode
git rm --cached -r .vscode
git config --global --add safe.directory B:/ToGit/chris
git config --global --add safe.directory C:/Users/chris/AppData/Roaming/Vortex
git config --global --add safe.directory B:/Users/chris
git config --global --add safe.directory B:/Users/chris/Documents
git config --global --add safe.directory C:/Users/chris/Documents
git config --global --add safe.directory C:/Users/chris/AppData
git fsck --full
git fetch --all 
[200~git config --global pack.windowMemory "100m"
git config --global pack.SizeLimit "100m" 
git config --global pack.threads "1"
git config --global pack.window "0"
git config --global pack.windowMemory "100m"
git fetch --all 
git config core.bigfilethreshold 200K
git fetch --all 
git config --global --add safe.directory C:/Users/chris/AppData/Roaming/JetBrains
git submodule absorbgitdir
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git config --global --add safe.directory C:/Users/chris/AppData/Roaming/JetBrains/DataGrip2022.1
git add .gitmodules
git commit -m "etc"
 git push --recurse-submodules=on-demand
 git push --recurse-submodules=on-demand
 git push --all
 git push --all
git submodule absorbgitdirs
git submodule absorbgitdirs
git config --global --add safe.directory U:\Project Shelf
git config --global --add safe.directory "U:\Project Shelf"
git config --global --add safe.directory "U:/Project Shelf"
git config --global --add safe.directory 'C:/Users/chris/AppData/Roaming/Opera Software/Opera GX Stable/_side_profiles/a_UnProfile'
pwd -W
pwd
git pwd
bash pwd
$(pwd)
$("pwd")
pwd
pwd git status
git status
pwd; git status
git push --recurse-submodules=on-demand
cd C:\Users\chris\source\repos\borås\xBioFilmer
cd /C/Users/chris/source/repos/borås/xBioFilmer
git clone '[200~C:\Users\chris\source\repos\borås\BioFilmer
git clone 'C:\Users\chris\source\repos\borås\BioFilmer'
push statusbar 'C:\Users\chris\source\repos\Karlstad4Butik\.git'
git push statusbar 'C:\Users\chris\source\repos\Karlstad4Butik\.git'
git push 'C:\Users\chris\source\repos\Karlstad4Butik\.git' statusbar
git push 'C:\Users\chris\source\repos\Karlstad4Butik\.git' Statusbar
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git submodule absorbgitdirs
git push --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
git push --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
git push origin HEAD --recurse-submodules=on-demand
ls
cd B:ls
cd B
ls
#!/bin/bash
set -e
export HOST_IP
check_env() {   if [[ -z "$HOST_IP" || -z "$DOLT_PASSWORD" || -z "$DOLTHUBAPI_PASSWORD" ]]; then     echo "Must supply HOST_IP, DOLT_PASSWORD, and DOLTHUBAPI_PASSWORD";     exit 1;   fi;   if [[ -z "$EMAIL_HOST" || -z "$EMAIL_PORT" || -z "$NO_REPLY_EMAIL" ]]; then     echo "Must supply EMAIL_HOST, EMAIL_PORT, and NO_REPLY_EMAIL";     exit 1;   fi;    check_email_auth_method; }
check_email_auth_method() {   if [ -z "$EMAIL_AUTH_METHOD" ]; then     export EMAIL_AUTH_METHOD=plain;   fi;    if [ "$EMAIL_AUTH_METHOD" == "plain" ] || [ "$EMAIL_AUTH_METHOD" == "login" ];   then     check_plain_login_auth_env;   elif [ "$EMAIL_AUTH_METHOD" == "oauthbearer" ];   then     check_oauthbearer_auth_env;   fi; }
check_plain_login_auth_env() {   if [[ -z "$EMAIL_USERNAME" || -z "$EMAIL_PASSWORD" ]]; then     echo "Must supply EMAIL_USERNAME and EMAIL_PASSWORD";     exit 1;   fi; }
check_oauthbearer_auth_env() {   if [[ -z "$EMAIL_USERNAME" || -z "$EMAIL_OAUTH_TOKEN" ]]; then     echo "Must supply EMAIL_USERNAME and EMAIL_OAUTH_TOKEN";     exit 1;   fi; }
create_token_keys() {     chmod +x ./gentokenenckey;     create_token_keys_for_service "doltlabremoteapi";     create_token_keys_for_service "doltlabapi";     create_token_keys_for_service "doltlabfileserviceapi"; }
create_token_keys_for_service() {   ./gentokenenckey > "$1"_iter_token.keys; }
create_envoy_config() {   cat envoy.tmpl | envsubst \$HOST_IP > envoy.yaml; }
update_images() {   docker-compose pull; }
start_services() {   DOLT_PASSWORD="$DOLT_PASSWORD"   DOLTHUBAPI_PASSWORD="$DOLTHUBAPI_PASSWORD"   docker-compose up -d; }
enable_usage_metrics() {     if [ -z "$DOLTHUB_METRICS_ENABLED" ]; then       echo "Enabling DoltLab usage metrics.";       export DOLTHUB_METRICS_ENABLED=true;     fi; }
send_deployment_metrics() {   if [ -n "$DOLTHUB_METRICS_ENABLED" ]; then     chmod +x send_doltlab_deployed_event;     ./send_doltlab_deployed_event --version v1.0.3;   fi; }
run_with_metrics() {   enable_usage_metrics;   send_deployment_metrics; }
set_env() {   set_default_user_env;   set_email_smtp_env; }
set_default_user_env() {   if [ -z "$DEFAULT_USER" ]; then     echo "Setting DEFAULT_USER=admin";     export DEFAULT_USER=admin;   fi;   if [ -z "$DEFAULT_USER_PASSWORD" ]; then     echo "Setting DEFAULT_USER_PASSWORD=DoltLab1234";     export DEFAULT_USER_PASSWORD=DoltLab1234;   fi;   if [ -z "$DEFAULT_USER_EMAIL" ]; then     echo "Setting DEFAULT_EMAIL=$NO_REPLY_EMAIL";     export DEFAULT_USER_EMAIL="$NO_REPLY_EMAIL";   fi; }
set_email_smtp_env() {   if [ -z "$EMAIL_CLIENT_HOSTNAME" ]; then     echo "Setting EMAIL_CLIENT_HOSTNAME=localhost";     export EMAIL_CLIENT_HOSTNAME=localhost;   fi; }
create_doltlab_network_if_not_exists() {   docker network inspect doltlab >/dev/null 2>&1 ||       docker network create --driver bridge doltlab; }
load_config() {   export ADMIN_CONFIG=${ADMIN_CONFIG-./admin-config.yaml};   if [ -f "$ADMIN_CONFIG" ]; then     echo "Loading administrator config $ADMIN_CONFIG";     ./config_loader -config "$ADMIN_CONFIG";     source ./doltlab-config.vars;   fi; }
_main() {     check_env;     set_env;     create_doltlab_network_if_not_exists;     create_token_keys;     create_envoy_config;     run_with_metrics;     load_config;     update_images;     start_services;     echo "DoltLab Documentation is available at https://docs.dolthub.com/guides/doltlab"; }
_main
which astextplain
pacman -Q git-extra
#!/bin/bash
git add --all
git commit -am "Changed file $*, Auto-Commit V0.1"
git push
& proteus-installer-for-windows.exe
- proteus-installer-for-windows.exe
. proteus-installer-for-windows.exe
ls
. Proteus-installer-for-Windows.exe
#!/bin/bash
# ---------------------------------------------------
# Script to create bootable ISO in Linux
# usage: make_iso.sh [ /tmp/porteus.iso ]
# author: Tomas M. <http://www.linux-live.org>
# updated for Porteus by fanthom <http://www.porteus.org>
# ---------------------------------------------------
if [ "$1" = "--help" -o "$1" = "-h" ]; then   echo "This script will create bootable ISO from files in curent directory.";   echo "Current directory must be writable.";   echo "example: $0 /mnt/sda5/porteus.iso";   exit; fi
CDLABEL="Porteus"
ISONAME=$(readlink -f "$1")
cd $(dirname $0)
if [ "$ISONAME" = "" ]; then    SUGGEST=$(readlink -f ../../$(basename $(pwd)).iso);    echo -ne "Target ISO file name [ Hit enter for $SUGGEST ]: ";    read ISONAME;    if [ "$ISONAME" = "" ]; then ISONAME="$SUGGEST"; fi; fi
mkisofs -o "$ISONAME" -v -l -J -joliet-long -R -D -A "$CDLABEL" -V "$CDLABEL" -no-emul-boot -boot-info-table -boot-load-size 4 -b boot/syslinux/isolinux.bin -c boot/syslinux/isolinux.boot ../.
mkisofs -o "$ISONAME" -v -l -J -joliet-long -R -D -A "$CDLABEL" -V "$CDLABEL" -no-emul-boot -boot-info-table -boot-load-size 4 -b boot/syslinux/isolinux.bin -c boot/syslinux/isolinux.boot ../.
bash Proteus-installer-for-Linux.com
ls
cd boot
bash Proteus-installer-for-Linux.com
ls
bash Proteus-installer-for-Linux.com
. Proteus-installer-for-Linux.com
. Porteus-installer-for-Linux.com
bash Porteus-installer-for-Linux.com
bash Porteus-installer-for-windows.exe
. Porteus-installer-for-windows.exe
