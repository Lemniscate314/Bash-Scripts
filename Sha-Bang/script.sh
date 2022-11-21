#!bin/zsh
touch log.log
echo "Today day is `date `" >> log.log
echo "The current logged users are: " >> log.log
who |  awk '{print $1}' >> log.log
echo "Your system is up since: `uptime`" >> log.log

