package digito_verificador;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class CheckDigit {
    private final BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
    private String role;

    public static void main(String[] args) throws IOException {
        new CheckDigit().askRole();
    }

    public void askRole() {
        boolean valid = false;

        do {
            try {
                System.out.print("\nEnter the role: ");
                role = input.readLine();

                if (role.matches("\\d{9}")) {
                    valid = true;
                } else {
                    System.out.println("\nEnter 9 digits");
                }
            } catch (Exception e) {
                System.out.println("\nInvalid data");
            }
        } while (!valid);

        reverseRole();
    }

    public void reverseRole() {
        String reversedRole = new StringBuilder(role).reverse().toString();

        multiplyDigits(reversedRole);
    }

    public void multiplyDigits(String reversedRole) {
        int[] numbers = reversedRole.chars().map(c -> c - '0').toArray();
        int factor = 2;
        int sum = 0;

        for (int number : numbers) {
            sum += number * factor;

            if (factor == 7) {
                factor = 2;
            } else {
                factor++;
            }
        }

        setCheckDigit(sum);
    }

    public void setCheckDigit(int sum) {
        int checkDigit = 11 - (sum % 11);

        System.out.println(role + '-' + checkDigit);
    }
}
