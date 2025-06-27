## SubRama Feature5: Simulaciones

![Evolución Rama Develop](03_ImagenesRepo/Image_readme.svg)


>Esta subrama tiene por objetivo simular los diferentes elementos dentro del tren de potencia de la embarcación con tal de analizar el comportamiento eléctrico y mecánico de los distintos elementos.

### Sub Branch Feature5
* v0.0: Se inicia el trabajo en la subrama. Se selecciona sólo el capítulo que se trabajará en el archivo fuente TeXmake(chapter5).
* v0.1: Se agregan imágenes respecto a las secciones que se trabajaran y las etapas que se simularán. 
* v0.2: Se agrega información a la subsección "Battery Cell", incorporando la ecuación del modelo, los parámetros seleccionados y la imagen que compara los resultados de simulación con los valores en datasheet.
* v0.3: Se agrega la información general a la subsección "Battery Cell", restando sólo el texto necesario para esta subsección.
* v0.4: Se agrega información general a la subsección "Battery Bank", restando sólo el texto necesario para esta subsección.
    * <ins>**Nota:**</ins> Agregar en la sección "Battery Cell" info gráfica de cómo los parámetros afectan a la curva de voltage profile.
* v0.5: Se agrega la sección "Power Converter Battery", en donde se describirá el proceso de diseño de la etapa DC-DC y de la etapa DC-AC. La finalidad es poder mostrar el proceso de diseño de cada etapa.
* v0.6: Se diseña el convertidor DC-DC (TLBBC), el cual considera un control de corriente y un control de balance de condensadores.
* v0.7: Se diseña el control de voltaje del convertidor TLBBC. Sin embargo, posiblemente será necesario rediseñar el controlador de vo. En este punto, queda mejorar:
    * Sistema de precarga.
    * Diseño de controlador vc.
* v0.8: Se realiza el circuito de precarga, considerando la secuencia adecuada para que no existiesen problemas de control.
* v0.9: Se implementa un banco de baterías adecuado para el convertidor visualizar como se descarga el banco de baterías a 50 kW por medio del convertidor de potencia.


