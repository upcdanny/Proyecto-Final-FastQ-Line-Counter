 #!/bin/bash

# Autores:	Danajhet Flores y Danny Yupa
# Fecha de creación:	23/11/2023
# Nombre del proyecto:	FastQ Line Counter
# Objetivo: Realizar conteo de líneas en un archivo FastQ

#Contar las lineas 
num_lineas=$(cat "$archivo" | wc -l)
echo "El archivo $archivo tiene $num_lineas lineas"

#Cambiar el archivo fastq por fasta
head -n -9 "$archivo" > archivo.tmp
echo "Se eliminaron las 9 últimas lineas del archivo $archivo"

#Convertir el @ a >
archivo_fasta="archivo.tmp"
sed -i 's/@/>/g' "$archivo_fasta"
echo "Se cambio @ por >"

#Contar las letras A,T,G y C
num_A=$(grep -o 'A' "$archivo_fasta" | wc -l)
num_T=$(grep -o 'T' "$archivo_fasta" | wc -l)
num_G=$(grep -o 'G' "$archivo_fasta" | wc -l)
num_C=$(grep -o 'C' "$archivo_fasta" | wc -l)
echo "Letra A: $num_A , Letra T: $num_T , Letra G: $num_G y Letra C: $num_C"

#Cambiar la letra A por ..
sed -i 's/A/../g' "$archivo"
echo "Se ha cambiado la letra A por G en el archivo"

    esac
