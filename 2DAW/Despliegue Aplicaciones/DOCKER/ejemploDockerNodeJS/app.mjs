import express from 'express';
import conectarBBDD from './ficheroApoyo.mjs';

const app = express();

//Cuando se produce una petición get devolverá el código html incluido como parámetro
//en el método send
app.get('/', (req, res) => {
  res.send('<h2>¡HOLA MUNDO!</h2>');
});

//Funcionalidad para trabajar con código asíncrono ofrecida por NodeJS
await conectarBBDD();

//El servidor estará escuchando en el puerto 3000 una petición get(la incluida anteriormente)
app.listen(3000); /*Recuperarla como una variable de entorno  process.env.PORT */
