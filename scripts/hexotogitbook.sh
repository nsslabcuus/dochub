#!/bin/bash
#
#===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== 
# Filename:     leetcode_update.sh
# Revision:     1.0
# Author:       Guoze Tang
# Date:         2018-08-30
# Description:      finding quotes how to affect regex evaluation
#===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== 

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
clear
CURRENT_DIR=$(pwd)
WORK_DIR=$(dirname $(pwd))
# WORK_DIR=$CURRENT_DIR/source/_posts
NOWTIME=$(TZ=UTC+5 date +%F\ %H:%M:%S)
POST_DIR=$CURRENT_DIR/leetcode
LEETCODE_POST=$CURRENT_DIR/SUMMARY.md
ABOUT_POST=$CURRENT_DIR/INDEX.md
leetcode_post="Leetcode-[0-9]"
difficulty_re="^\*\*Difficulty[:]?\*\*[ :]*\b(Easy|Medium|Hard)\b"
category_re="^\*\*Category[:]?\*\*[ :]*[[:alpha:]]*"
leetcode_qnum_re="Leetcode-[0-9]+"
leetcode_linkname="Leetcode-[^\.]*"
leetcode_qname=""
re_num="~ ^[[:digit:]]+$ ]]"
echo "[INFO]Post dir name: $POST_DIR"


cd $POST_DIR
POSTS=$(ls $POST_DIR | grep .md | grep "$leetcode_post")
for file in $POSTS; do
    if [ -d $file ]; then
        continue
    fi
    
    if [ -f $file ]; then
        codetime=$(echo $file | cut -d'-' -f 1-3)
        num=$(echo $file | grep -oE "$leetcode_qnum_re" | grep -oE '[0-9]+')
        linkname=$(echo $file | grep -oE "$leetcode_linkname")
        name=$(echo $linkname | cut -d'-' -f3-)
        difficulty=$(cat $file | grep -oE "$difficulty_re" | cut -d':' -f2-)
        category=$(cat $file | grep -oE "$category_re" | cut -d':' -f2-)

        if [ ! $difficulty ]; then
            difficulty="Null"
        fi
        
        if [ ! $category ]; then
            category="Null"
        fi

        sed -i '/^---$/,/^---$/d' $file
        # sed -i '/^<!--.*-->$/d' $file
        # sed -i '/^<!--/, /-->$/d' $file
        # sed -i '/<!--/, /-->/d' $file
        if [ $num ] ; then
            # echo "$name($num) (../$linkname/) | $difficulty | $category | $codetime |"
            new_file_name="$num. $name"
            new_file=$linkname.md
            mv $file $new_file
            echo "$new_file_name](./$new_file)" >> $CURRENT_DIR/.temp
            echo "$num | [$name](./$linkname.html) | $difficulty | $category | $codetime |" >> $CURRENT_DIR/.temp1
            # echo "$num | [$name](../$linkname/) | $difficulty | $category | $codetime |" >> $CURRENT_DIR/.temp
        fi
    fi
done


# post_num=0
# IFS=$'\n'
# cat $CURRENT_DIR/.temp | sort -n >> $CURRENT_DIR/.temp2
# for line in $(cat $CURRENT_DIR/.temp2)
# do
#     #echo "| ${line}"
#     echo "* [${line}" >> $LEETCODE_POST
#     # post_num=$(($post_num+1))
# done

IFS=$'\n'
cat $CURRENT_DIR/.temp1 | sort -n >> $CURRENT_DIR/.temp3
for line in $(cat $CURRENT_DIR/.temp3)
do
    #echo "| ${line}"
    echo "| ${line}" >> $ABOUT_POST
    post_num=$(($post_num+1))
done

sed -i "s/SOLVEDNUMBER/$post_num/g" $ABOUT_POST
sed -i "s/UPDATETIMESTAMP/$NOWTIME/g" $ABOUT_POST

rm $CURRENT_DIR/.temp 
rm $CURRENT_DIR/.temp2
rm $CURRENT_DIR/.temp1
rm $CURRENT_DIR/.temp3