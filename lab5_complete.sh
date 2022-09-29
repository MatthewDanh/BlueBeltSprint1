option=1    
while [ $option != 0 ]  
do                                                                                                                                                                     
	echo "What math operation do you need done?"                                                                                                                 
	echo "1: Addition" 
	echo "2: Subtraction"
	echo "3: Multiplication"
	echo "4: Division" 
	echo "5: Exponential"
	echo "0: Exit" 
	read option  
	if [ $option != 0 ] 
	then
		echo ""    
		echo "Please input the first number: "                                                                                                                            
		read first_number   
		echo "Now the second number: " 
		read second_number   
		echo ""  
		case $option in 
		1)
			result=$(($first_number+$second_number))
			echo "Your answer is: ${result}"                                                                                                                               
		;; 
		2)  
			result=$(($first_number-$second_number)) 
			echo "Your answer is: ${result}"
		;;
		3)  
			result=$(($first_number*$second_number))  
			echo "Your answer is: ${result}"
		;;   
		4)     
			result=$(($first_number/$second_number))  
			echo "Your answer is: ${result}" 
		;;   
		5)  
			result=1  
			for (( c=1; c<=$second_number; c++ ))                                                                                                                            
			do      
					result=$(($result*$first_number))                                                                                                                             
			done 
		echo "Your answer is: ${result}"                                                                                                                                   
	esac 
	echo "" 
	else 
		echo "Thank you for using our system!"                                                                                                                            
	fi                                                                                                                                                                  
done
