 #! /bin/bash

 #Echo Command
 echo Hello world!

#Variables
#Uppercase by convension
#Letters, numbers, underscores
NAME="Jack";
# echo "My name is $NAME"

#user input
#read -p "Enter your name: "

#User Input 
# read -p "Enter your name:" NAME
# echo "Hello $NAME nice to meet you"

# conditional

# if [ "$NAME" == "Maryan" ]
# then 
#     echo "Your name is Maryan"
# fi

#if-else statement
# if [ "$NAME" == "Maryan" ]
# then 
#     echo "Your name is Maryan"
# else
#     echo "Your name is not Maryan"
# fi

#else-if (elif) statement
if [ "$NAME" == "Maryan" ]
then 
    echo "Your name is Maryan"
elif [ "$NAME" == "Jack" ]
then
    echo "Your name is Jack"
else    
    echo "Your name is not Maryan or Jack"
fi

#comparison code
# -eq to see if values are equal
# -ne to see if the values are not equal
# -gt returns true if value one is greater than value 2
# -ge retruns true if value one is greater than or equal to value 2
# -lt returns true if value 1 is less than value 2
# -le returns true if value 1 is less than or equal to value 2

NUM1=31
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then 
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

#File conditions
# -d file True if the file is a directory
# -e true if the file exists -f is also used
# -f true if the provided string is a file
# -g true if the group id is set on a file
# -r true if the file is readable
# -s tue if the file has a non-zero size
# -u true if the user id is set on a file
# -w true if the file is writable
# -x true if the file is executable

FILE="test.txt"
if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi
  
#CASE statements (like switches)
#when they put in their answer it goes in a variable called answer
read -p "Are you 21 or over Y/N " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can now relax :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no relaxing"
        ;;
        *)
        echo "please emnter y/yes or n/no"
        ;;
esac

#LOOPS
#SIMPLE FOR LOOP
# NAMES="Maryan Aisha Sadiya Sabz"
# for NAME in $NAMES 
#     do
#         echo  "Hello $NAME"
#     done


#FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renaming $FILE  to new-$FILE"
#         mv $FILE $NEW-$FILE
# done  

# # while loop- read through a file line by line
# LINE=1
# while read -r CURRENT_LINE
#     do 
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done <"./new-one.txt"

#functions simple
# function sayHello(){
#     echo "Hello World"
# }

# sayHello

#functions with parameters with positional parameters
# function greet(){
#     echo "Hello I am $1 and I am $2"
# }

# greet "Maryan" "24"

#basic commands to create folder and put a file in it and write to that file
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"

#>> to write it into that file