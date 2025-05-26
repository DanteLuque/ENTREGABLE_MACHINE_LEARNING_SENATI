# 🎨 Clasificación de Triángulos con Machine Learning

Proyecto para generación, entrenamiento y clasificación de imágenes de triángulos utilizando **Processing**, **p5.js** y **ml5.js**. Incluye generación automática de imágenes, entrenamiento de un modelo de red neuronal y aplicación web para clasificación en tiempo real.

## ⚙️ Características

-   Generación automática de imágenes de triángulos (varios tipos y orientaciones) con Processing.
    
-   Entrenamiento de un modelo de red neuronal convolucional para clasificación con ml5.js.
    
-   Aplicación web interactiva para dibujar y clasificar triángulos en tiempo real.
    
-   Uso de modelos personalizados guardados y cargados localmente.
```
danteluque-entregable_machine_learning_senati/
├── app.html                       # App web para clasificar dibujos con el modelo entrenado
├── model/                        # Archivos del modelo entrenado (JSON, pesos, metadata)
│   ├── model.json
│   ├── model.weights.bin
│   └── model_meta.json
├── processing/
│   └── triangles/
│       ├── triangles.pde          # Sketch de Processing para generar imágenes
│       └── data/
│           └── rectangle_triangles/ # Imágenes generadas organizadas por tipo
│               ├── acutangulo/
│               ├── acutangulo_de_cabeza/
│               ├── espejo/
│               ├── espejo_de_cabeza/
│               ├── normal/
│               └── normal_de_cabeza/
└── train/
    └── train.html                 # HTML para entrenar el modelo con ml5.js
```

## 🚀 Cómo usar este proyecto

### 1. Generar imágenes de triángulos

-   Abre **Processing** y carga el archivo `processing/triangles/triangles.pde`.
    
-   Ejecuta el sketch (botón ▶️).
    
-   Se generarán 100 imágenes por cada tipo de triángulo en las carpetas correspondientes dentro de `processing/triangles/data/rectangle_triangles/`.
    
-   El programa se cerrará automáticamente al finalizar.

### 2. Entrenar el modelo de clasificación

-   Abre el archivo `train/train.html` en un navegador web moderno.
    
-   El script cargará las imágenes generadas previamente.
    
-   Se entrenará un modelo de red neuronal durante 50 epochs.
    
-   Al finalizar, el modelo se guardará automáticamente en la carpeta `model/`.
- 
### 3. Clasificar triángulos en tiempo real

-   Abre `app.html` en un navegador.
    
-   La aplicación cargará el modelo entrenado desde la carpeta `model/`.
    
-   Podrás dibujar triángulos en el canvas y el modelo los clasificará automáticamente.
    
-   Usa el botón **Limpiar** para borrar el canvas y dibujar un nuevo triángulo.

## 🧰 Tecnologías usadas

-   [Processing](https://processing.org/) — para generación de imágenes.
    
-   [p5.js](https://p5js.org/) — para interacción y gráficos en navegador.
    
-   [ml5.js](https://ml5js.org/) — para entrenamiento y uso de modelos ML en JS.
    

----------

## 📋 Etiquetas de clasificación

El modelo distingue estos 6 tipos de triángulos:

Etiqueta

Triangulo Rectangulo - TIPO A - normal

Triangulo Rectangulo - TIPO C - normal de cabeza

Triangulo Rectangulo - TIPO B - en espejo

Triangulo Rectangulo - TIPO D - en espejo y de cabeza

Triangulo Acutangulo - TIPO A

Triangulo Acutangulo de cabeza - TIPO B


## 💡 Notas

-   Las imágenes generadas tienen tamaño 48x48 px con 4 canales (RGBA).
    
-   Para cargar el modelo en `app.html`, asegúrate que los archivos `model.json`, `model_meta.json` y `model.weights.bin` estén en la carpeta `/model`.
    
-   El entrenamiento puede tardar dependiendo del navegador y hardware.