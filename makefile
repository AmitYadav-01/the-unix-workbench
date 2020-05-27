all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench Assignment by Amit Yadav" > README.md
	echo -e "$(date)" >> README.md
	echo -e "\nGuessinggame.sh contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
