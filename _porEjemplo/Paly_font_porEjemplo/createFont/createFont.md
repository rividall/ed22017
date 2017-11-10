#createFont()

Paulina Descouvieres
https://github.com/PalyDescouvieres
pdescouvieresb@udd.cl

###**Descripción**

Convierte una tipografía .ttf o .otf al formato que utiliza Processing.
Ésta debe estar dentro de una carpeta llamada “data” dentro del sketch para ser ejecutada.
Esta función convierte los caracteres en vectores, para así ser rendereados de manera más rápida al ejecutar un programa.

###**Sintaxis**

createFont(nombre, tamaño);
createFont(nombre, tamaño, smooth);
createFont(nombre, tamaño, smooth, charset);

###**Parámetros**

nombre = String, nombre de la tipografía;
tamaño = float, tamaño de la letra;
smooth = boolean, true para antialiased;
charset = array, con la cantidad de caracteres a generar;


###**Ejemplo**


```
PFont texto;

void setup() {
 size (500, 500);
 background (123);
 texto = createFont("Adam", 48);
 textFont(texto);
 textAlign(CENTER, CENTER);
 text("texto ejemplo", width / 2, height / 2);
 
}
```