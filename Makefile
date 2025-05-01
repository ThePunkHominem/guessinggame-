# Makefile para el proyecto

# Archivo de salida
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date: $(shell date)" >> README.md
	echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
