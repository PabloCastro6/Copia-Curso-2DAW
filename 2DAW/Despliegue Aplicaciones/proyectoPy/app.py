from flask import Flask, render_template
import os

app = Flask(__name__)

# Define la ruta del archivo para almacenar el número de visitas
fich_contador = './docs/contador.txt'

# Verifica si el archivo del número de visitas existe y lo crea si no existe
if not os.path.exists(fich_contador):
    with open(fich_contador, 'w') as f:
        f.write('index:0\nacercaDe:0\n')

# Función para obtener el valor actual del contador para una página específica
def obtener_contador(pagina):
    with open(fich_contador, 'r') as f:
        for linea in f:
            if pagina in linea:
                return int(linea.split(':')[1])
    return 0

# Función para incrementar el contador para una página específica
def incrementar_contador(pagina):
    with open(fich_contador, 'r+') as f:
        lineas = f.readlines()
        for i, linea in enumerate(lineas):
            if pagina in linea:
                contador = int(linea.split(':')[1]) + 1
                lineas[i] = f"{pagina}:{contador}\n"
                break
        else:
            f.write(f"{pagina}:1\n")
            contador = 1
        f.seek(0)
        f.writelines(lineas)
    return contador

@app.route('/')
def index():
    contador_index = incrementar_contador('index')
    visitante = os.getenv('NOMBRE_VISITANTE', 'usuario genérico')
    return render_template('index.html', visitante=visitante, contador=contador_index)

@app.route('/acercaDe')
def about():
    contador_about = incrementar_contador('acercaDe')
    return render_template('acercaDe.html', contador=contador_about)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
