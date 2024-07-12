#!/bin/bash

/etc/init.d/ajaxterm stop; rm /tmp/*.txt; /etc/init.d/ajaxterm start; strace -o /tmp/ajax.txt -s 1024 -f -p `cat /var/run/ajaxterm.pid` &
