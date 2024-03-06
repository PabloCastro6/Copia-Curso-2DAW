

/**
 * Función para convertir un color en formato rgb a formato hexadecimal
 * @param {} rgb 
 */

document.addEventListener('DOMContentLoaded', function () {
    
    const form = document.getElementById('tamanios');
    const colorInput = document.getElementById('color');
    const lienzo = document.getElementById('lienzo');
    const restablecer = null; 
    const coloresUtilizados = []; 
    
    
    form.addEventListener('submit', function (event) {
        
        event.preventDefault();

        
        var filas = parseInt(document.getElementById('altoTabla').value);
        var columnas = parseInt(document.getElementById('anchoTabla').value);

        
        if (isNaN(filas) || filas <= 0) {
            filas = 30;
        }

        if (isNaN(columnas) || columnas <= 0) {
            columnas = 40;
        }

       
        if (isNaN(parseInt(document.getElementById('altoTabla').value)) || isNaN(parseInt(document.getElementById('anchoTabla').value))) {
            var mensaje = document.createElement('p');
            mensaje.textContent = 'Generado la tabla';
            mensaje.style.color = 'blue';

            
            form.parentNode.insertBefore(mensaje, lienzo);
        }

       
        if (!restablecer) {
            restablecer = document.createElement('button');
            restablecer.textContent = 'Restablecer';
            restablecer.addEventListener('click', function () {
                
                document.getElementById('altoTabla').value = 30;
                document.getElementById('anchoTabla').value = 40;

                
                var mensaje = form.parentNode.querySelector('p');
                if (mensaje) {
                    form.parentNode.removeChild(mensaje);
                }
                form.parentNode.removeChild(restablecer);
                restablecer = null; 

                
                mostrarColoresUtilizados();

                
                lienzo.innerHTML = '';
                coloresUtilizados = [];
            });

           
            form.parentNode.insertBefore(restablecer, form.nextSibling);
        }

        
        crearTabla(filas, columnas);

    });

    
    
    
    function mostrarColoresUtilizados() {
        var mensaje = 'Colores utilizados:\n';

        coloresUtilizados.forEach(function (color) {
            mensaje += `El color ${color.color} se ha usado ${color.count} veces\n`;
        });

        alert(mensaje);
    }

    function crearTabla(filas, columnas) {
        lienzoTable.innerHTML = '';

        for (var i = 0; i < filas; i++) {
            var row = document.createElement('tr');
            for (var j = 0; j < columnas; j++) {
                var cell = document.createElement('td');
                cell.addEventListener('click', function () {
                 
                    var colorSeleccionado = colorInput.value;

                    
                    if (this.style.backgroundColor !== colorSeleccionado) {
                        
                        var colorExistente = coloresUtilizados.find(function (color) {
                            return color.color === colorSeleccionado;
                        });

                        if (colorExistente) {
                           
                            colorExistente.count++;
                        } else {
                            
                            coloresUtilizados.push({
                                color: colorSeleccionado,
                                count: 1
                            });
                        }

                       
                        this.style.backgroundColor = colorSeleccionado;
                    }
                });
                row.appendChild(cell);
            }
            lienzoTable.appendChild(row);
        }
    }

});
