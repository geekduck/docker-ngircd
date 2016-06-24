#!/bin/sh

rewrite_ngircd_server_name() { local name=$1
  sed -i -e "s/Name = irc.example.net/Name = $1/g" /etc/ngircd/ngircd.conf
}

while [ $# -gt 0 ]; do
  case $1 in
    --server-name) rewrite_ngircd_server_name $2
        shift 2
        ;;
    --) shift
        break
        ;;
  esac
done

exec /usr/sbin/ngircd -n
