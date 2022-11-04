#!/bin/bash
#
##############################################################################
#
#  Program :	Upd_Repo v1
#  Arch    :	x86_64 
#  Author  : 	Ben
#  Website : 	https://sourceforge.net/projects/stormos/
#
##############################################################################

function banner() {
	term_cols=$(tput cols) 
	str=":: $1 ::"
	for ((i=1; i<=`tput cols`; i++)); do echo -n ‾; done
	tput setaf 10; printf "%*s\n" $(((${#str}+$term_cols)/2)) "$str"; tput sgr0
	for ((i=1; i<=`tput cols`; i++)); do echo -n _; done
	printf "\n"
}

repoargs=("-n -R stormM.db.tar.gz *.pkg.tar.zst")

rm -f stormM.*

banner "Update stormM Repo..."

repo-add $repoargs
#sleep 8
cp stormM.db.tar.gz stormM.db

banner "stormM Repo Updated..."
