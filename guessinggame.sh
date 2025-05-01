#!/bin/bash

# Función para contar archivos
count_files() {
    echo $(ls -1 | wc -l)
}

# Número de archivos en el directorio actual
correct_answer=$(count_files)

# Bucle para seguir pidiendo al usuario hasta que acierte
while true; do
    echo "Guess how many files are in the current directory:"
    read guess
    
    if [[ "$guess" -lt "$correct_answer" ]]; then
        echo "Too low! Try again."
    elif [[ "$guess" -gt "$correct_answer" ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the right number of files."
        break
    fi
done
