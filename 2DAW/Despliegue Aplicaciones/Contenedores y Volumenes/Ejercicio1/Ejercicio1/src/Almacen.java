import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class Almacen {
    private String nombreFichero = "./BBDD/letras.txt";
    private BufferedWriter ficheroSalida;

    public Almacen() {
        this.crearFichero();
    }

    public void crearFichero() {
        try {
            File file = new File(nombreFichero);
            if (!file.exists()) {
                file.createNewFile();
            }

            ficheroSalida = new BufferedWriter(new FileWriter(file.getAbsoluteFile(), true));
        } catch (IOException errorDeFichero) {
            System.out.println("Error al abrir el fichero de salida" + errorDeFichero.getMessage());

        }
    }

    public void guardarLetra(String letra) {

        try {
            ficheroSalida.write(letra);
            ficheroSalida.newLine();
        } catch (IOException errorDeFichero) {
            System.out.println("Error al almacenar la letra" + errorDeFichero.getMessage());
            cerrarFichero();
        }
    }

    public void mostrarDatosAlmacenados() {
        cerrarFichero();
        try {
            BufferedReader buffer = new BufferedReader(new FileReader(new File(nombreFichero)));
            String linea = "";
            while((linea = buffer.readLine()) != null) {
                System.out.println(linea);
            }
            buffer.close();
        } catch (IOException e) {
            System.out.println("Error al leer los datos almacenados");
        }     
    }
    public void cerrarFichero() {
        try {
            ficheroSalida.close();
        }
        catch (IOException errorDeFichero)
        {
            System.out.println(
                "Error al cerrrar el fichero" +
                errorDeFichero.getMessage() );
        }
    }
}