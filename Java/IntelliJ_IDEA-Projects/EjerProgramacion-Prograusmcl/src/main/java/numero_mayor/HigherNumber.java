package numero_mayor;

import javax.sound.midi.Soundbank;
import java.io.*;
import java.util.*;

public class HigherNumber {

    //Fields
    private BufferedReader input
            = new BufferedReader(new InputStreamReader(System.in));
    private int n;
    private int[] numbers;

    //Main method
    public static void main(String[] args) throws IOException {
        new HigherNumber().askForN();
    }

    //Methods
    public void askForN() throws IOException {
        System.out.print("Enter n: ");
        n = Integer.parseInt(input.readLine());
        askForN_Numbers();
    }

    public void askForN_Numbers() throws IOException {
        numbers = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter number: ");
            numbers[i] = Integer.parseInt(input.readLine());
        }

        calculateHigherNumber();
    }

    public void calculateHigherNumber() {
        System.out.print("The higher is ");
        Arrays.stream(numbers).max().ifPresent(System.out::println);
    }
}
