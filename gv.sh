#!/bin/bash
keyerrorlogo='
==================================================================

           --------- Get a GV number ----------
		   		   
                                                 -----  jialezi 
==================================================================';

clear
echo "$keyerrorlogo";
echo "Make sure to input specific dota, you won't be prompted enen if they're wrong ";
echo "Press enter to continue";
read

echo "Input cURL(bash)"
read curl

echo "Input the number you want to obtain ( Pure number and 10-length"
read gv

echo $curl > gv.txt

sed -i 's/mid=2/mid=6/' gv.txt
sed -i 's/true%5D/%22%2B1'$gv'%22%2Ctrue%2C%22%22%5D/' gv.txt

echo "Press enter to start";
read



for (( i=1; i>0; i++ ))
    do
	a=`bash gv.txt`;
        b='[[null,null,"There was an error with your request. Please try again."]]';
	if [[ "$a" != "$b" ]];
        then
        echo "Failed/Succeed";
        echo "Total run number is $i ";
        exit 0;
        else
        echo "No. $i attempt  "`date`;
	fi
    sleep 0.5s;
done
