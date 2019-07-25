# This file generates  the README.md file automatically

now_d=$(date +"%d-%m-%y")
now_t=$(date +"%T")
touch "README.md"
printf  '# This is the README file for the Unix workbench Course project\n' > "README.md"
printf "## Time in which this file was run: $now_d $now_t \n" >> "README.md"
lines=$(wc -l < guessinggame.sh)
echo  "Number of lines in guessinggame.sh: ** $lines **" >> "README.md"
