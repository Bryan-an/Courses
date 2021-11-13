package suma_naturales;

import java.io.*;

public final class NaturalSum {

    //Fields
    private BufferedReader input
            = new BufferedReader(new InputStreamReader(System.in));
    private int n;
    private int s1;
    private int s2;

    //Main method
    public static void main(String[] args) throws IOException {
        new NaturalSum().askForN();
    }

    //Methods
    public void askForN() throws IOException {
        System.out.print("Enter n: ");
        n = Integer.parseInt(input.readLine());
        calculateS1();
        calculateS2();
        displayResult();
    }

    public void calculateS1() {
        for (int i = 1; i <= n; i++) {
            s1 += i;
        }
    }

    public void calculateS2() {
        s2 = (n * (n + 1)) / 2;
    }

    public void displayResult() {
        System.out.println("S1: " + s1);
        System.out.println("S2: " + s2);

        if (s1 == s2) {
            System.out.println("They're equal");
        } else {
            System.out.println("They're not equal");
        }
    }
}
