package ecuacion_primer_grado;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class FirstDegreeEquation {
    private BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
    private int a;
    private int b;
    private double x;

    public static void main(String[] args) {
        new FirstDegreeEquation().askForCoefficients();
    }

    public void askForCoefficients() {
        boolean valid = false;

        do {
            try {
                System.out.print("Enter the a coefficient: ");
                a = Integer.parseInt(input.readLine());
                System.out.print("Enter the b coefficient: ");
                b = Integer.parseInt(input.readLine());
                valid = true;
            } catch (Exception e) {
                System.out.println("Invalid data" + e.toString());
            }
        } while (!valid);

        displaySolution();
    }

    public void displaySolution() {
        double a = this.a;
        double b = this.b;

        x = (-b) / a;

        if (a == 0) {
            if (b == 0) {
                System.out.println("\nThere is no unique solution");
            } else {
                System.out.println("\nWithout solution");
            }
        } else {
            System.out.println("\nSolution: " + x);
        }
    }
}
