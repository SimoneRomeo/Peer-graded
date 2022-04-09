all: README.md clean

README.md:
	touch README.md
	echo "# The title of the project is Guessing Game" > README.md
	echo "## The date and time at which make was run:" >> README.md
	date -u >> README.md
	echo "## The number of lines of code in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
