package numeros_palindromos;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class PalindromeNumbers {

    private final BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
    private String number;

    public static void main(String[] args) {
        new PalindromeNumbers().run();
    }

    public void run() {
        askForNumber();
        printResult();
    }

    public void askForNumber() {
        boolean valid = false;

        do {
            try {
                System.out.print("\nEnter a number: ");
                int data = Integer.parseInt(input.readLine());
                number = data + "";
                valid = true;
            } catch (Exception e) {
                System.out.println("\nInvalid data");
            }
        } while (!valid);

    }

    public boolean isPalindrome() {
        String reverseNumber = new StringBuilder(number).reverse().toString();

        return number.equals(reverseNumber);
    }

    public void printResult() {
        String result = isPalindrome() ? (number + " is palindrome") : (number + " is not palindrome");

        System.out.printf("%s", result);
    }
}
