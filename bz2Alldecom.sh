#!/usr/bin/bash


echo "This program decompress .fastq.bz2 files to fastq file in the current directory."
echo "last update 2012.3.11 ........................................."


#Retrive filenames
Files=`ls`
m2=0

for var2 in $Files; 
do
	echo "in var2 file $var2"
	if [[ "$var2" =~ ".bz2" ]];then
		ARRAY2[$m2]=$var2
		m2=`expr $m2+1`
	fi
done



for afile in "${ARRAY2[@]}";
	do 
	echo "data is...........................$afile"
	case $afile in
		*.bz2)
		bfile=$(echo $afile | sed 's/.bz2//;')
		;;
	esac
	eval "bzip2 -d $bfile.bz2";
done
