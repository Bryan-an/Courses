//package productos_especiales;
//
//import static input.AskForData.*;
//
//public class FactorialPow {
//
//    /**
//     * Main method.
//     *
//     * @param args
//     */
//    public static void main(String[] args) {
//        new FactorialPow().askForNumbers();
//    }
//
//    /**
//     * Method that asks for the numbers.
//     */
//    public void askForNumbers() {
//        int n = askForInt("Enter n: ");
//        int m = askForInt("Enter m: ");
//
//        calculateFactorialPow(n, m);
//    }
//
//    /**
//     * Method that calculates the factorial pow.
//     *
//     * @param n Base.
//     * @param m Exponent.
//     */
//    public void calculateFactorialPow(int n, int m) {
//        int factorialPow = 1;
//
//        for (int i = 1; i < m; i++) {
//            factorialPow *= (n + i);
//        }
//
//        factorialPow *= n;
//
//        System.out.println("Factorial pow: " + factorialPow);
//    }
//}
