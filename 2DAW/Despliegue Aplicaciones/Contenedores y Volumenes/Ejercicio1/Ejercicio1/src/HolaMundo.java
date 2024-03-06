import java.util.Scanner;

public class HolaMundo {
    public static void main(String[] args) {
        String letra = "";
        int contador = 0;
        Almacen almacen = new Almacen();
        Scanner scn = new Scanner(System.in);

        System.out.println("Introduce letras en mayúscula. La Z terminará la ejecución");
        do {
            if(scn.hasNext()) {			
                letra = scn.next();
                almacen.guardarLetra(letra);
                contador ++;
            } 
        } while (!letra.equals("Z"));
        
        System.out.println("Se han introducido " + contador + " letras: ");
        almacen.mostrarDatosAlmacenados();
    }
}
