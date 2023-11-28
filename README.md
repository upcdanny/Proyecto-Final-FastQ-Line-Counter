# Proyecto-Final-FastQ-Line-Counter

El presente proyecto se encarga de simplificar el conteo de líneas en archivos FastQ mediante el uso de un script eficiente desarrollado en Bash. Además de ofrecer estadísticas detalladas sobre la distribución de las letras A, T, G y C, este script facilita la conversión de archivos FastQ a formato Fasta, mejorando la manipulación de datos genómicos en el ámbito de la biología.

## Requisitos 

# FastQ Line Counter

Este script en Bash, llamado FastQ Line Counter, proporciona una forma rápida y eficiente de contar líneas en archivos FastQ. Además, ofrece estadísticas detalladas sobre la distribución de las letras A, T, G y C, y facilita la conversión de archivos FastQ a formato Fasta para mejorar la manipulación de datos genómicos.


Asegúrate de cumplir con los siguientes requisitos antes de utilizar el script:

- **Sistema Operativo:** Linux o macOS (puede no ser compatible con Windows).
- **Bash:** El script está diseñado para ejecutarse en el intérprete de Bash. Asegúrate de tener Bash instalado en tu sistema.
- **Acceso a Comandos Estándar:** Asegúrate de tener acceso a comandos estándar de Linux, como `cat`, `wc`, `head`, `sed` y `grep`.

## Instalación

1. Descarga el script: `wget https://link-to-your-script`.
2. Da permisos de ejecución: `chmod +x fastq_line_counter.sh`.

## Uso

Para contar líneas en un archivo FastQ, ejecuta:

```bash
./fastq_line_counter.sh nombre_del_archivo.fastq


