int columnas = 20;
int filas = 20;
float[][] distancias = new float[columnas][filas]; //matriz para guarda los numeros
int tam; //el tamaño del cuadradito
void setup() {
  size(600, 600);
  tam = width / columnas;
}
void draw() {
  background(255);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float cX = i * tam + tam/2;
      float cY = j * tam + tam/2;
      float d = dist(mouseX, mouseY, cX, cY);
      distancias[i][j] = d;
    }
  }
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      //usamos la funcion map
      float brillo = map(distancias[i][j], 0, 600, 255, 0);
      fill(brillo);
      noStroke();
      rect(i * tam, j * tam, tam, tam);
    }
  }
}
