#!/usr/bin/env bash
# ******************************************************
# DESC    :
# AUTHOR  : Alex Stocks
# VERSION : 1.0
# LICENCE : Apache License 2.0
# EMAIL   : alexstocks@foxmail.com
# MOD     : 2019-04-13 19:39
# FILE    : start.sh
# ******************************************************

#export LD_LIBRARY_PATH=./lib:${LD_LIBRARY_PATH}
rm -rf ./rsync_dump/
rm -rf ./sync_log/

# Usage: pika_port [-h] [-t local_ip -p local_port -i master_ip -o master_port -m forward_ip -n forward_port -x forward_thread_num -y forward_passwd -z bgsave-wait-timeout -f filenum -s offset -w password -r rsync_dump_path -l log_path
# 	-h     -- show this help
# 	-t     -- local host ip(OPTIONAL default: 127.0.0.1)
# 	-p     -- local port(OPTIONAL)
# 	-i     -- master ip(OPTIONAL default: 127.0.0.1)
# 	-o     -- master port(REQUIRED)
# 	-m     -- forward ip(OPTIONAL default: 127.0.0.1)
# 	-n     -- forward port(REQUIRED)
# 	-x     -- forward thread num(OPTIONAL default: 1)
# 	-y     -- forward password(OPTIONAL)
# 	-z     -- max timeout duration for waiting pika master bgsave data (OPTIONAL default 1800s)
# 	-f     -- binlog filenum(OPTIONAL default: local offset)
# 	-s     -- binlog offset(OPTIONAL default: local offset)
# 	-w     -- password for master(OPTIONAL)
# 	-r     -- rsync dump data path(OPTIONAL default: ./rsync_dump)
# 	-l     -- local log path(OPTIONAL default: ./log)
# 	-b     -- max batch number when port rsync dump data (OPTIONAL default: 512)
# 	-d     -- daemonize(OPTIONAL)
#   example: ./pika_port -t 127.0.0.1 -p 12345 -i 127.0.0.1 -o 9221 -m 127.0.0.1 -n 6379 -x 7 -f 0 -s 0 -w abc -l ./log -r ./rsync_dump -b 512 -d

./sbin/pika_port -t 172.29.210.249 -p 21333 -i 172.29.210.249 -o 4224 -m 172.29.210.249 -n 8312 -x 6 -z 1500 -l ./sync_log/ -r ./rsync_dump -b 1 
