#!/bin/bash
# @Author: Bernardo Flores
# March 30, 2025
# This script  excutes whoami, ifconfig, and locates proof.txt, local.txt, and flag.txt then shows the output as if it were ran on a terminal.
# Assumption: Script is ran as root user.

echo "$(whoami)@$(hostname):~# whoami"
whoami

echo "$(whoami)@$(hostname):~# ifconfig"
ifconfig


find / -type f \( -name "local.txt" -o -name "proof.txt" -o -name "flag.txt" \) 2>/dev/null |  while read file; do echo "$(whoami)@$(hostname):~# cat $file"; cat $file;   echo ""; done
