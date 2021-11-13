//package productos_especiales;
//
//import java.util.function.Predicate;
//
//import static input.AskForData.*;
//
//public class Factorial {
//
//    /**
//     * Main method.
//     *
//     * @param args
//     */
//    public static void main(String[] args) {
//        new Factorial().askForNumber();
//    }
//
//    /**
//     * Method that asks for a number.
//     */
//    public void askForNumber() {
//        String request = "Enter a number: ";
//        Predicate<Integer> filter = e -> e >= 0;
//        String errorMessage = "The number must be >= 0";
//
//        int number = askForInt(request, filter, errorMessage);
//
//        calculateFactorial(number);
//    }
//
//    /**
//     * Method that calculates the factorial of a given number.
//     *
//     * @param n The given number.
//     */
//    public void calculateFactorial(int n) {
//        int factorial = 1;
//
//        if (n == 0) {
//            factorial = 1;
//        } else {
//            for (int i = 1; i <= n; i++) {
//                factorial *= i;
//            }
//        }
//
//        System.out.println("Factorial: " + factorial);
//    }
//}
