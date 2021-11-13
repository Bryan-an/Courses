package secuencia_collatz;

import java.io.*;

public final class Collatz2 {

    /**
     * Main method.
     *
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        new Collatz2().askForNumber();
    }

    /**
     * Method that asks for the number.
     *
     * @throws IOException
     */
    public void askForNumber() throws IOException {
        BufferedReader input
                = new BufferedReader(new InputStreamReader(System.in));

        System.out.print("n: ");
        int number = Integer.parseInt(input.readLine());

        calculateSequences(number);
    }

    /**
     * Method that asks for the number.
     *
     * @throws IOException
     */
    public void calculateSequences(int number) {
        for (int i = 1; i <= number; i++) {
            System.out.print(i + " ");
            graphLengths(i);
            System.out.println();
        }
    }

    /**
     * Method that graphs the sequence's length.
     *
     * @param number The int number in the range.
     */
    public void graphLengths(int number) {
        if (number > 1) {
            System.out.print("*");
            if (number % 2 == 0) {
                number /= 2;
            } else {
                number = number * 3 + 1;
            }
            graphLengths(number);
        } else {
            System.out.print("*");
        }
    }

}
