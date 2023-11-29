 #!/bin/bash

# Autores:	Danajhet Flores y Danny Yupa
# Fecha de creación:	23/11/2023
# Nombre del proyecto:	FastQ Line Counter
# Objetivo: Realizar conteo de líneas en un archivo FastQ

# Lista de archivos a procesar
archivos=("archivo1.fastq" "archivo2.fastq" "archivo3.fastq")

for archivo in "${archivos[@]}"; do
    # Contar las líneas
    num_lineas=$(wc -l < "$archivo")
    echo "El archivo $archivo tiene $num_lineas líneas"

    # Crear un archivo temporal con las 9 últimas líneas eliminadas
    head -n -9 "$archivo" > archivo.tmp
    echo "Se eliminaron las 9 últimas líneas del archivo $archivo"

    # Convertir el @ a >
    archivo_fasta="archivo.tmp"
    sed -i 's/@/>/g' "$archivo_fasta"
    echo "Se cambió @ por >"

    # Contar las letras A, T, G y C
    num_A=$(grep -o 'A' "$archivo_fasta" | wc -l)
    num_T=$(grep -o 'T' "$archivo_fasta" | wc -l)
    num_G=$(grep -o 'G' "$archivo_fasta" | wc -l)
    num_C=$(grep -o 'C' "$archivo_fasta" | wc -l)
    echo "Letra A: $num_A , Letra T: $num_T , Letra G: $num_G y Letra C: $num_C"

    # Cambiar la letra A por G en el archivo fasta
    sed -i 's/A/G/g' "$archivo_fasta"
    echo "Se ha cambiado la letra A por G en el archivo"

    esac
