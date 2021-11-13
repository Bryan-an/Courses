package secuencia_collatz;

import java.io.*;

public final class Collatz {

    //Fields
    BufferedReader input;
    int number;

    /**
     * Constructor of Collatz class.
     *
     * @throws IOException
     */
    public Collatz() throws IOException {
        input = new BufferedReader(new InputStreamReader(System.in));
        askForNumber();
    }

    /**
     * Main method.
     *
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        new Collatz();
    }

    /**
     * Method that asks for the number.
     *
     * @throws IOException
     */
    public void askForNumber() throws IOException {
        System.out.print("n: ");
        number = Integer.parseInt(input.readLine());

        calculateSequence(number);
    }

    /**
     * Method that calculates the sequences.
     *
     * @param number The given number by the user.
     */
    public void calculateSequence(int number) {
        if (number > 1) {
            System.out.print(number + " ");
            if (number % 2 == 0) {
                number /= 2;
            } else {
                number = number * 3 + 1;
            }
            calculateSequence(number);
        } else {
            System.out.print(number + " ");
        }
    }
}
