#!/bin/bash

# Nome del file da cercare
file_da_copiare="da_copiare.pdf"

# Cartella1(dove si trovano i file da copiare)
cartella1="/Users/biancabucur/desktop/cartella1"

# Cartella2 (dove voglio copiare i file)
cartella2="/Users/biancabucur/desktop/cartella2"



# Trovo tutti i file con il nome specificato nella cartella1
file_trovati=$(find "$cartella1" -type f -name "$file_da_copiare")

# Controllo se il file è stato trovato
if [ -z "$file_trovati" ]; then
  echo "Nessun file trovato con il nome: $file_da_copiare"
  exit 1
fi

# Copia i file nella directory di destinazione
for file in $file_trovati; do
  cp "$file" "$cartella2"
  echo "File copiato: $file -> $cartella2"
done

echo "Copia completata!"
