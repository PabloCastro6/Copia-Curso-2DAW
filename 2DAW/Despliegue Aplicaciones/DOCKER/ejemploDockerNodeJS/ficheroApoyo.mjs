//Simula una conexión a BBDD pero simplemente establece un timeout
const conectarBBDD = () => {
  const promesa = new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve();
    }, 1000);
  });

  return promesa;
};

export default conectarBBDD;
