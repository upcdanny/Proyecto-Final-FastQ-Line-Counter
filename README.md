# Proyecto Final FastQ Line Counter

El presente proyecto se encarga de simplificar el conteo de líneas en archivos FastQ mediante el uso de un script eficiente desarrollado en Bash. Además de ofrecer estadísticas detalladas sobre la distribución de las letras A, T, G y C, este script facilita la conversión de archivos FastQ a formato Fasta, mejorando la manipulación de datos genómicos en el ámbito de la biología.

# Requisitos 

## Projecto "FastQ Line Counter"

Este script en Bash, llamado FastQ Line Counter, proporciona una forma rápida y eficiente de contar líneas en archivos FastQ. Además, ofrece estadísticas detalladas sobre la distribución de las letras A, T, G y C, y facilita la conversión de archivos FastQ a formato Fasta para mejorar la manipulación de datos genómicos.

Asegúrate de cumplir con los siguientes requisitos antes de utilizar el script:

- **Bash:** El script está diseñado para ejecutarse en el intérprete de Bash. Asegúrate de tener Bash instalado en tu sistema (https://learn.microsoft.com/es-es/windows/wsl/install).
- **Acceso a Comandos Estándar:** Asegúrate de tener acceso a comandos estándar de Linux, como `cat`, `wc`, `head`, `sed` y `less`.
- **Datos SRA:** El script FastQ Line Counter está diseñado para trabajar con datos en formato FASTQ, típicamente obtenidos del Sequence Read Archive (SRA) de NCBI. A continuación, se proporcionan opciones para obtener los datos SRA necesarios:

 **Opción 1: Descarga desde la Interfaz Web**

1. Visita NCBI SRA (https://trace.ncbi.nlm.nih.gov/Traces/?view=run_browser&acc=SRR24770130&display=download) 
2. Utiliza la interfaz de descarga en el sitio web de NCBI para descargar los datos en formato FASTQ.

**Opción 2: Descarga desde la Terminal con `fastq-dump`**

Instalar el paquete `SRA Toolkit` con el comando `sudo apt-get install sra-toolkit` puedes usar el comando `fastq-dump` para convertir datos SRA a formato FASTQ directamente desde la terminal:

El comando `fastq-dump -x 5 -Z SRR24770130 > Nombre del archivo.fastq` se utiliza para descargar y convertir los primeros 5 millones de lecturas del conjunto de datos SRR24770130 desde el Sequence Read Archive (SRA) al formato FASTQ.

Este archivo Fastq contendrá las secuencias de ADN y la información de calidad asociada a esas lecturas. Puedes usar herramientas como `head` o `less` para inspeccionar rápidamente el contenido del archivo recién creado.

## Características Principales

1. **Conteo Rápido de Líneas:** Realiza un conteo eficiente de líneas en archivos FastQ, proporcionando resultados rápidos y precisos.

2. **Análisis de Composición de Bases:** Genera estadísticas detalladas sobre la frecuencia de las letras A, T, G y C en el archivo, ofreciendo una visión completa de la composición de bases.

3. **Conversión a Formato Fasta:** Facilita la conversión de archivos FastQ a formato Fasta, mejorando la manipulación y preparación de datos para análisis posteriores.

4. **Integración con FastQC:** Compatible con datos provenientes de FastQC, proporcionando una herramienta complementaria para el análisis de calidad de secuencias genómicas.

5. **Descarga Directa de Datos SRA:** Incluye opciones para descargar directamente datos SRA desde la terminal utilizando el comando `fastq-dump`.

6. **Interfaz Amigable:** Diseñado con una interfaz de usuario sencilla que permite a usuarios de todos los niveles ejecutar análisis de secuencias genómicas de manera intuitiva.

## PROCESO DE INSTALACIÓN

**Instalación desde un archivo**

1. Descarga el archivo `Proyecto-Final-FastQ-Line-Counter.sh`.

2. Navega al directorio donde se encuentran los datos del proyecto.

3. Ejecuta el script principal:

   ```bash
   ./nombre del archivo fastq.sh 

  Para hacer el script ejecutable como un comando habitual, puedes realizar uno de los siguientes comandos:

   **Establecer permisos y enlazarlo al directorio /usr/local/bin/:**
   
  `chmod +x ~/nombre del archivo fastq.sh`; (remplazar la ruta en la que se haya instalado el programa).
  `sudo ln -s ~/nombre del archivo.sh /usr/local/bin/`

  **Agregar la carpeta al PATH:**

 `export PATH="$PATH:~"`; (Esta opción te permitirá usar todos los scripts/ejecutables dentro de la carpeta home/user).
  
 Ten en cuenta que esta opción se perderá después de reiniciar la terminal, por lo que es recomendable agregarla al archivo de perfil de tu terminal (por 
 ejemplo, .bashrc o .zshrc).

**Instalación desde GitHub**

a) Clonar el respectivo repositorio

git `clone` https://github.com/upcdanny/Proyecto-Final-FastQ-Line-Counter

b) Navegar al respectivo directorio del proyecto

`cd` Proyecto-Final-FastQ-Line-Counter

c) Ejecutar el script:

`./Proyecto-Final-FastQ-Line-Counter.sh archivo.fastq`

## Contribuciones

¡Tu participación y comentarios son bienvenidos en **FastQ Line Counter**! Si encuentras errores, tienes ideas para mejoras, o simplemente quieres comentar, no dudes en abrir un problema o enviar un pull request. Agradecemos cualquier contribución que ayude a mejorar este proyecto. ¡Gracias por tu interés y apoyo!

## Autores

- **Danny Yupa** (https://github.com/upcdanny)
- **Danajhet** (https://github.com/DanaUPC)

## Agradecimientos

Queremos expresar nuestro sincero agradecimiento a los profesores Frank y Manuel. Sus valiosas enseñanzas y apoyo han sido fundamentales para el desarrollo y mejora continua a lo largo del curso. ¡Gracias a cada uno y que pasen una feliz navidad y año nuevo!












