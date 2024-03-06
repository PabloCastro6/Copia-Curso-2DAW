import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

public class HolaMundo {
    public static void main(String[] args) {
        int numero = 0;
        List lista = new ArrayList();
        Scanner scn = new Scanner(System.in);
        System.out.println("Introduce números. El cero terminará la ejecución");
        do {
            if(scn.hasNextInt()) {			
                numero = scn.nextInt(); 
                lista.add(numero);
            }
        } while (numero!=0);
    }
}
