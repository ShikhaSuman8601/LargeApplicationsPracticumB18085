# count=3
# echo $count
# echo count
# ((count=count+1))
# echo $count

# NAME1="Arun Kumar "
# echo $NAME1
# NAME2="Verma"
# NAME3=$NAME1$NAME2
# echo $NAME3

# echo $NAME1+$NAME2

#!/bin/bash
# x=5
# y=10
# ans=$((x+y))
# echo "$x + $y = $ans"

# echo Enter x
# read x
# echo Enter y
# read y
# echo Enter z
# read z
# max=$x
# if [[ $y>$max ]]; then
# 	max=$y
# fi

# if [[ $z>$max ]]; then
# 	max=$z
# fi

# echo max of x,y and z is $max

# cat > movies.list << EOF
# Avengers
# Spiderman Into the Spiderverse
# Shutter Island
# Black Swan
# Fight Club
# Paper Towns
# Romeo and Juliet
# Skam wtFock
# EOF

# cat movies.list | wc

# NOOFLINES=$(cat movies.list | wc -l)
# echo $NOOFLINES lines in movies.list

# echo 
# echo Random sequence of 20 numbers:
# seq 20 | shuf

# echo
# echo sequence of 20 numbers sorted:
# seq 20 | shuf | sort -n

# cat > marks.dat <<EOF
# B12 Rajesh 34
# B18 Mahesh 75
# B19 Arun 55
# B10 Vinod 90
# B22 Priya 95
# B30 Susan 85
# EOF

# echo After shuffling
# cat marks.dat | shuf 

# echo
# echo After sorting
# cat marks.dat | shuf | sort -k 3 -r

# echo
# echo Top three marks
# cat marks.dat | shuf | sort -k 3 -r | head -n 3

# man xargs

# whoami
# pwd

# etclist=`ls /etc | wc -l`
# echo $etclist

# etcdir=`ls -l /etc | grep '^d' | wc -l`
# echo $etcdir

# sleep 5s

# total=0
# for i in quiz1.txt quiz2.txt endsem.txt; do
# 	while IFS=" " read -r name score; do
# 		echo $score
# 	done < "$i"
# done


# while read name1 score1 name2 score2 name3 score3; do
# 	echo "$name" "(($score1+$score2+$score3))" >> 'totalmarks.txt'
# done < 'quiz1.txt' 'quiz2.txt' 'endsem.txt'

file=`cat quiz1.txt quiz2.txt endsem.txt`
while IFS=" " read -r name score; do
	echo score
done < "$file"