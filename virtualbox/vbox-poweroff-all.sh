#!/bin/bash
#
# Power off all running VirtualBox VM's

for i in `vboxmanage list runningvms | awk '{print $1}' | sed 's/"//g'`; do vboxmanage controlvm $i poweroff; done

