#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("make a new progam" "open progam" "use git" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "make a new progam")
         echo "what will be the name of the progam (no exention)"
            read name
            nano $name".java"
            javac $name".java"
              options2=("re edit" "test the program" "update git" "Quit")
	    select opt2 in "${options2[@]}"
	    do
	        case $opt2 in
	         "re edit")
		   nano $name".java"
		    ;;
		  "test the program")
		      dx --dex --output=$name".jar" $name".class"
		      java -jar $name".jar" $name
		      ;;
		  "update git")
		      
		      ;;
		  "Quit")
		      break ;;
		  *) echo invalid option;;
	      esac
	      done

            ;;
            
        "open progam")
            echo "you chose choice 2"
            ;;
            
        "use git")
            echo "you chose choice 3"
            ;;
            
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

