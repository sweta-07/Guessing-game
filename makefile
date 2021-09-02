all: README.md

README.md: guessinggame.sh
	echo "## Guessing Game" > README.md
	echo -n "\n**Make last run date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md