#!/bin/bash
#
# https://coderwall.com/p/h-qnwa/kill-all-running-vagrant-vms
#
for i in `vagrant global-status | grep virtualbox | awk '{ print $1 }'` ; do vagrant halt $i ; done

