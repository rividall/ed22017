#loadFont()

Paulina Descouvieres
https://github.com/PalyDescouvieres
pdescouvieresb@udd.cl

###**Descripción**

Carga tipografías en formato .vlw desde “Create Font”, en Herramientas.
A diferencia de createFont(), no se crean vectores, si no texturas en el programa. Éstas crean un archivo en la carpeta llamada “data” dentro del sketch.
Se recomienda usarlo en el setup(), ya que si se escribe en el draw(), el programa puede correr lento al ejecutarse una y otra vez.


###**Sintaxis**

loadFont(nombre);

###**Parámetros**

nombre = String, nombre del archivo a cargar;

###**Ejemplo**

```
PFont texto;

void setup() {
  size(500, 500);
  background(123);
  texto = loadFont("Adam-48.vlw");ía
  textFont(texto);
  textAlign(CENTER, CENTER);
  text("texto ejemplo", width / 2, height / 2);
}
```