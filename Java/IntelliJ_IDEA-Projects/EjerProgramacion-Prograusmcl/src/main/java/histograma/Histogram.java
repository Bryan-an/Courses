package histograma;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Histogram {

    private String positives = "";
    private String negatives = "";

    private final BufferedReader input = new BufferedReader(
            new InputStreamReader(System.in));

    public static void main(String[] args) throws IOException {
        new Histogram().askForNumbers();
    }

    public void askForNumbers() throws IOException {
        int number;
        StringBuilder negativesBuilder = new StringBuilder(negatives);
        StringBuilder positivesBuilder = new StringBuilder(positives);

        System.out.println("Enter several values, finish with zero: ");


        do {
            number = Integer.parseInt(input.readLine());

            if (number < 0) {
                negativesBuilder.append('*');
            } else if (number > 0) {
                positivesBuilder.append('*');
            }
        } while (number != 0);

        negatives = negativesBuilder.toString();
        positives = positivesBuilder.toString();

        displayResults();
    }

    public void displayResults() {
        System.out.println("Positives: " + positives);
        System.out.println("Negatives: " + negatives);
    }
}
