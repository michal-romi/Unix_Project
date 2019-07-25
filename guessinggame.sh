# This program  asks the user to guess how many files are int he current directory

# count the number of files in current directory
num=$(ls -1| wc -l)

# check if the input is a positive integer

function check_pos_int {
        [ "$1" -ge 0 ] 2>/dev/null && echo yes || echo no
}

echo "Please guess how many files are in the current directory"

read guess

while [[ $guess -ne $num ]]
do
        a=$(check_pos_int $guess)

        if  [[ $a = "no" ]]
        then
        echo "Please enter only positive integers"
        elif [[ $guess -gt $num && $a = "yes" ]]
        then
                echo "Guess is too high - Please try again"
        else
                echo "Guess is too low - Please try again"
        fi
        read guess
done
echo "You guessed right! there are $num files"

