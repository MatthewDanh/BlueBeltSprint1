option=1 #initializes the menu options so that it will run through the while loop once

Menu () { #Displays all the menu options for the script
        echo ""
        echo "This is the completed version of lab 8"
        echo "Here is a list of commands for this lab, enter your choice"
        echo ""
        echo "1) Read contents from a file."
        echo "2) Copy contents from one file into another"
        echo "3) Write contents into a file"
        echo "4) Compare 2 strings to see if they are the same"
        echo "5) Search a file for a word"
        echo "6) Compare 2 numbers"
        echo "0) Exit script"
        echo ""
}
FileRead () { #Asks the user to input the name of a file so that it can read the contents to the terminal
        echo "Enter the name of the file you would like to read from"
        read filename
        cat $filename
}
CopyFile () { #Asks the user for both the input and output files to copy it into a new file
        echo "Enter the name of the file you would like to read from"
        read filename
        echo "Enter the name of the file you would like to copy to"
        read outputFile

        cat $filename >> $outputFile #Reads the user input and outputs it into a file
}
WriteFile () { #Asks for an output file before taking in user input to write out to the file
        echo "Enter the name of the file you would like to write to"
        read outputFile
        FileText="a" #Initializes the text so that it will go through the while loop at least once
        while [ $FileText != "x" ] #Ends the loop if the input is only x
        do
                echo "Enter a line of text to write to the file. To exit, type 'x'"
                read -a FileText #the -a flag allows for multiple arguments/words to be read and output into the file
                if [ $FileText == "x" ]
                then
                        echo "Exiting file write..."
                else
                        echo $FileText >> $outputFile
                fi
        done
}
CompareString () { #Asks for 2 strings to compare
        echo "Enter the first string:"
        read firstString
        echo "Enter the second string:"
        read secondString

        if [ $firstString == $secondString ] #Checks to see if the strings are the same while
        then
                echo "Both strings are the same"
        else
                echo "The strings are different from one another"
        fi
}
FindingWords () { #Asks the user for a word to search for in a file
        echo "What word do you want to find?"
        read wordSearch
        echo "What file would you like to find this from?"
        read fileRead
        grep $wordSearch $fileRead #Takes the word entered in the first prompt and checks the file from the second prompt.
}
CompareNumbers () { #Asks the user for 2 numbers and compares them to see if they are equal, greater than or less than.
        echo "What is the first number you would like to compare?"
        read firstNumber
        echo "What is the second number you would like to compare?"
        read secondNumber
        if [ $firstNumber == $secondNumber ] #Checks to see if the 2 numbers are equal
        then
                echo "${firstNumber} is equal to ${secondNumber}"
        elif [ $firstNumber -gt $secondNumber ] #Checks to see if the first number is greater than the second number
        then
                echo "${firstNumber} is greater than ${secondNumber}"
        elif [ $firstNumber -lt $secondNumber ] #Checks to see if the first number is less than the second number
        then
                echo "${firstNumber} is less than ${secondNumber}"
        fi
}
while [ $option != 0 ]
do
        Menu
        read option
        case $option in #Uses the input from above to select which function to enact
        1)
                FileRead #Calls the FileRead function
        ;;
        2)
                CopyFile #Calls the CopyFile function
        ;;
        3)
                WriteFile #Calls the WriteFile function
        ;;
        4)
                CompareString #Calls the CompareString function
        ;;
        5)
                FindingWords #Calls the FindingWords function
        ;;
        6)
                CompareNumbers #Calls the CompareNumbers function
        ;;
        esac
done

echo "Exiting script..."
