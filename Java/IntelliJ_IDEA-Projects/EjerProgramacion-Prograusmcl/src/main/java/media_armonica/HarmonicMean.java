package media_armonica;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class HarmonicMean {
    private int numbersAmount;
    private double[] numbers;
    private double harmonicMean;
    private BufferedReader input = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String[] args) {
        new HarmonicMean().run();
    }

    public void run() {
        howManyNumbers();
        askForNumbers();
        calculateResult();
        showResult();
    }

    public void howManyNumbers() {
        boolean valid = false;

        do {
            try {
                System.out.print("How many numbers: ");
                numbersAmount = Integer.parseInt(input.readLine());
                if (numbersAmount <= 0) throw new Exception();
                valid = true;
            } catch (Exception e) {
                System.out.println("\nInvalid data\n");
            }
        } while (!valid);
    }

    public void askForNumbers() {
        numbers = new double[numbersAmount];

        for (int i = 0; i < numbers.length; i++) {
            numbers[i] = askForNumber(i + 1);
        }
    }

    public double askForNumber(int position) {
        while (true) {
            try {
                System.out.printf("n%d = ", position);
                return Double.parseDouble(input.readLine());
            } catch (Exception e) {
                System.out.println("\nInvalid data\n");
            }
        }
    }

    public void calculateResult() {
        double numerator = numbersAmount;
        double denominator = 0;

        for (double n : numbers) {
            denominator += (1 / n);
        }

        harmonicMean = numerator / denominator;
    }

    public void showResult() {
        System.out.printf("H = %f", harmonicMean);
    }
}
