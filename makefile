all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench Assignment by Amit Yadav" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md

