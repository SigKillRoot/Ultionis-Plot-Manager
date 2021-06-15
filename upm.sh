#!/bin/bash
echo "Ultionis plot man"
pwd1=$(pwd)
user=$(whoami)
	max=$(find ~/ -type d -name "chia-plotter")
	zenity --info --title="Ultionis plot man" --text="Finding madMAx43v3r plotter
	
	 found at $max - user is $user - current directory is $pwd" --no-wrap --timeout=1
eval cd $max 
eval cd build
eval pwd
pwd1=$(pwd)
user=$(whoami)
driveprefix=$"/media/"$user"/"
echo $driveprefix
	cd ~/chia-blockchain/venv/bin/
	poolactual=$(./chia keys show | grep -e 'Pool' | awk '{print $5}')
	echo "Pool key "$poolactual
	cd ~/chia-blockchain/venv/bin/
	farmactual=$(./chia keys show | grep -e 'Farm' | awk '{print $5}')
	echo "Farmer Key "$farmactual
	zenity --info --title="Keys found !" --text="Pool key $poolactual 
	
	Farmer key $farmactual" --no-wrap --timeout=1
echo
echo "Temp drive"

temp=`zenity --file-selection --directory --title="Select TEMP drive directory"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
echo "Temp2 drive"

temp2=`zenity --file-selection --directory --title="Select TEMP2 drive directory"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
echo "Destination drive"

dest=`zenity --file-selection --directory --title="Select DEST drive directory"`

case $? in
         0)
                echo "\"$FILE\" selected.";;
         1)
                echo "No file selected.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
echo "Thread count"

thread=$(zenity --entry --title="Threads")
if [ -n "$thread" ]
then
    zenity --info --text="Using $thread Threads" --no-wrap --timeout=1
fi
echo $thread
echo
echo "Buckets 32/64/128/256/512"

buck=$(zenity --entry --title="Buckets")
if [ -n "$buck" ]
then
    zenity --info --text="Using $buck buckets" --no-wrap --timeout=1
fi
echo $buck
echo
sleep 1
eval
echo "OK"
eval cd $max
eval cd build

	zenity --info --title="CLEARING .tmp" --timeout=1 --text="TEMP" $temp --no-wrap --timeout=1
	rm $temp/*.tmp
	
treqSpace=256	#Size of plot file with a little bit of wiggle room
tavailSpace=$(df $dest | awk 'END{print $4}')	#Checks drive space free
let tavailSpace=$tavailSpace/1000000
	echo " "Required  space : $treqSpace GB
	echo
	echo Available space : $tavailSpace GB
	echo
	if (( tavailSpace < treqSpace )); then	# Compares required space to free space
	  echo "Not enough space available on " $temp " , Checking next drive." >&2	#Move to next drive if not enough free space
	fi
	echo "Available free disk space on  " $temp "  OK"
	echo
	echo Available : $tavailSpace / Required : $treqSpace
	echo
	(( PS = $tavailSpace / $treqSpace ))
	echo Room for $PS temp plots on $temp
	echo
	sleep 1
	zenity --info --title="CLEARING .tmp" --timeout=1 --text="TEMP2" $temp2 --no-wrap --timeout=1
	eval nohup rm $temp2/*.tmp

ttreqSpace=110	#Size of plot file with a little bit of wiggle room
ttavailSpace=$(df $dest | awk 'END{print $4}')	#Checks drive space free
let ttavailSpace=$ttavailSpace/1000000
	echo " "Required  space : $ttreqSpace GB
	echo
	echo Available space : $ttavailSpace GB
	echo
	if (( ttavailSpace < ttreqSpace )); then	# Compares required space to free space
	  echo "Not enough space available on " $temp2 " , Checking next drive." >&2	#Move to next drive if not enough free space
	fi
	echo "Available free disk space on  " $temp2 "  OK"
	echo
	echo Available : $ttavailSpace / Required : $ttreqSpace
	echo
	(( PS = $ttavailSpace / $ttreqSpace ))
	echo Room for $PS temp2 plots on $temp2	
	echo
	sleep 1
	zenity --info --title="CLEARING .tmp" --timeout=1 --text="DEST" $DEST --no-wrap --timeout=1
	eval nohup rm $temp/*.tmp
	
dreqSpace=256	#Size of plot file with a little bit of wiggle room
davailSpace=$(df $dest | awk 'END{print $4}')	#Checks drive space free
let davailSpace=$davailSpace/1000000
	echo " "Required  space : $dreqSpace GB
	echo
	echo Available space : $davailSpace GB
	echo
	if (( davailSpace < dreqSpace )); then	# Compares required space to free space
	  echo "Not enough space available on " $dest " , Checking next drive." >&2	#Move to next drive if not enough free space
	fi
	echo "Available free disk space on  " $dest "  OK"
	echo
	echo Available : $davailSpace / Required : $dreqSpace
	echo
	(( PS = $davailSpace / $dreqSpace ))
	echo Room for $PS completed plots on $dest
	echo
	sleep 1
	xxx=0
while true; do
let xxx=$xxx+1
	sleep 1
    echo "Starting next plot"
    echo "Plot # " $xxx
    echo "./chia_plot" -p $poolactual -f $farmactual -t $temp"/" -2 $temp2"/" -d $dest"/ -r "$thread" -u "$buck
    sleep 5
    eval
    echo "Removing temp files"
	rm $temp/*.tmp
	eval ls $temp
	rm $temp2/*.tmp
	eval ls $temp2
	eval
    echo "Continuing loop"
   	continue
	done

