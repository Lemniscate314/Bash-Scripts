#!bin/zsh
#Saving a result of a code block to a file
SUCCESS=0
E_NOARGS=65
if [ -z "$1"]
then 
   echo "Usage `basename $0`"
   echo E_NOARGS
fi 
{
    echo 
    echo "Archive description"
    rpm -q $1
    echo 
    rpm -i --test $1
if [ "$?" -eq $SUCCESS ]
then
    echo "$1 can be installed."
else
    echo "$1 cannot be installed."
fi  
    echo              
} > "$1.test"       

echo "Results of rpm test in file $1.test"
exit 0
#/*TODO */