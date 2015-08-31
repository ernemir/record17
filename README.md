# record17
Registro 17 ANSI NIST ITL-2013 
Para que las muestras biométricas capturadas por un organismo determinado, puedan ser intercambiadas con otros organismo, el sistema que gestiona los datos biométricos debe soportar registros de transacciones conforme al estándar ANSI/NIST ITL 1-2011, es decir, debe ser capaz de generar y/o utilizar las transacciones que sean morfológicas, sintácticas y semánticamente conformes a los requisitos del estándar.

En la arquitectura propuesta, las tareas de generación, transmisión y recepción de registros de estándar, se encuentran comprendidas en el sistema de intercambio de imágenes de iris. En este sistema se tiene al módulo que se encarga de la generación y transmisión de registros necesarios para una transacción ANSI/NIST ITL 1-2011 y otro módulo para la recepción de estos registros de organismos asociados. En este trabajo, se utiliza el registro tipo 17 del estándar que corresponde al rasgo “iris”.

El registro de tipo 17 del estándar antes mencionado, se utiliza únicamente para el intercambio de información. Sin embargo, se debe también considerar la generación y el almacenamiento de metadatos necesarios para el reconocimiento, o sea para los procesos de identificación y/o verificación de personas mediante el iris (iriscode) lo que comprende el subsistema de reconocimiento de iris. 

Las imágenes que gestionan los sistemas mencionados, pueden obtenerse tanto de transacciones con otros organismos, como de capturas propias del sistema. Para esto último, se utiliza el sistema de captura y compresión de imágenes de iris. 

Tanto la estructura del registro tipo 17, como los metadatos para el reconocimiento del iris son estructuras complejas. Esto puede ocasionar algunos inconvenientes si se trabaja con el modelo de datos relacional, por las limitaciones impuestas por el mismo. Por esto, aquí se ha optado por utilizar la tecnología Objeto-Relacional (OR), como se detallará en la siguiente sección. 

En este repositorio se reproducirá la estructura propuesta por el Registro 17 para PostgreSQL.
