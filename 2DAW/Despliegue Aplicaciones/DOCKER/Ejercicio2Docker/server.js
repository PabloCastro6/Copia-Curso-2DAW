/**
 * Con este código se inicializa un servidor NodeJS, que escucha en el puerto 80.
 * Maneja peticiones entrantes de dos tipos:
 *      Si se trata de una petición GET, el servidor devuelve una página HTML.
 *      En el caso de una petición POST, se modifica el objetivo del usurio.
 */
const express = require('express');
const parser = require('body-parser');

const app = express();

let objetivo = 'Carrera de 10 kilómetros';

app.use(
  parser.urlencoded({
    extendido: false,
  })
);

//Código por el cual se carga el contenido de la carpeta public, 
// para después poder referenciar la hoja de estilos
app.use(express.static('public'));

//Cuando recibe petición GET, devuelve el código HTML de la página
app.get('/', (req, res) => {
  res.send(`
    <html>
      <head>
        <link rel="stylesheet" href="styles.css">
      </head>
      <body>
        <section>
          <h2>OBJETIVO:</h2>
          <h3>${objetivo}</h3>
        </section>
        <form action="/almacenarObj" method="POST">
          <div class="form-control">
            <label>Nuevo objetivo</label>
            <input type="text" name="obj">
          </div>
          <button>Añadir Objetivo</button>
        </form>
      </body>
    </html>
  `);
});

//Cuando recibe petición POST(derivada del envío del formulario),
//recoge le valor del nuevo objetivo, lo muestra por consola, establece su valor como
//el del objetivo principal, y redirige la petición a la url / (se renderizará la página html)
app.post('/almacenarObj', (req, res) => {
  const nuevoObjetivo = req.body.obj;
  console.log(nuevoObjetivo);
  objetivo = nuevoObjetivo;
  res.redirect('/');
});

//El servidor quedará escuchando en el puerto 80 para esos dos tipos de peticiones
app.listen(80);
