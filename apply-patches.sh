#!/usr/bin/env bash

test -n "$DEBUG" && set -x

#                      __ __       ___
#                     /\ \\ \    /'___`\
#                     \ \ \\ \  /\_\ /\ \
#                      \ \ \\ \_\/_/// /__
#                       \ \__ ,__\ // /_\ \
#                        \/_/\_\_//\______/
#                           \/_/  \/_____/
#                                         Algoritimos
#
#
#      Author: Mr. Ivan
#        Mail: lopesivan.ufrj@gmail.com
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: apply-patches.sh
#        Date: Qui 27 Dez 2018 12:11:00 -02
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

srcdir=../_patches
##############################################################################
##############################################################################
##############################################################################
let i=1

#patches[$((i++))]=st-scrollback-mouse-altscreen-20191024-a2c479c.diff

#patches[$((i++))]=st-clipboard-0.8.3.diff
patches[$((i++))]=st-configura-fonte-20200422-19fb975.diff
patches[$((i++))]=st-configura-temas-fixed-20200423-56705fb.diff
patches[$((i++))]=st-hidecursor-0.8.2.diff
patches[$((i++))]=st-bold-is-not-bright-0.8.2.diff
patches[$((i++))]=st-vertcenter-20180320-6ac8c8a.diff
patches[$((i++))]=st-workingdir-20200317-51e19ea.diff
patches[$((i++))]=st-anysize-0.8.2.diff
patches[$((i++))]=st-boxdraw_v2-0.8.3.diff
patches[$((i++))]=st-ligatures-boxdraw-20200430-0.8.3.diff
patches[$((i++))]=st-fix-keyboard-input-20180605-dc3b5ba.diff
patches[$((i++))]=st-externalpipe-0.8.2.diff
patches[$((i++))]=st-spoiler-20180309-c5ba9c0.diff
patches[$((i++))]=st-copyurl-20190202-3be4cf1.diff
patches[$((i++))]=st-iso14755-0.8.3.diff
patches[$((i++))]=st-autosync-0.8.3.diff
patches[$((i++))]=st-appsync-0.8.3.diff
patches[$((i++))]=st-configura-atalhos-20200507-92e6050.diff

# ----------------------------------------------------------------------------
# Run!
cd st
git undo
for id in `seq ${#patches[*]}`; do
  echo `tput bold tput setb 3`Applying patch`tput setaf 3` "${patches[id]}..."  `tput sgr0`
  patch -Np1 -i "$srcdir/${patches[id]}"
done

#make
# ----------------------------------------------------------------------------
exit 0