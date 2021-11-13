package no_multiplos;

import java.io.*;

public class NotMultiples {

    //Fields
    private BufferedReader input
            = new BufferedReader(new InputStreamReader(System.in));

    /**
     * Main method.
     *
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        new NotMultiples().askForNumber();
    }

    /**
     * Method that asks for the number.
     *
     * @throws IOException
     */
    public void askForNumber() throws IOException {
        System.out.print("Enter the number: ");
        int number = Integer.parseInt(input.readLine());

        displayMinorNumbers(number);
    }

    /**
     * Method that displays the minor numbers of the given number.
     *
     * @param number The given number.
     */
    public void displayMinorNumbers(int number) {
        for (int i = 1; i <= number; i++) {
            if (!isMultiple(i)) {
                System.out.println(i);
            }
        }
    }

    /**
     * Method that checks whether the number is multiple of 3 or multiple of 7.
     *
     * @param number
     * @return Return true if the number is multiple of 3 or multiple of 7.
     */
    public boolean isMultiple(int number) {
        return number % 3 == 0 || number % 7 == 0;
    }
}
