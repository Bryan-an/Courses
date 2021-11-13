//package productos_especiales;
//
//import static input.AskForData.*;
//
//public class BinomialCoefficient {
//
//    public static void main(String[] args) {
//        new BinomialCoefficient().askForNumbers();
//    }
//
//    public void askForNumbers() {
//        double n = askForInt("Enter n: ");
//        double k = askForInt("Enter k: ");
//
//        calculateBinomialCoefficient(n, k);
//    }
//
//    public void calculateBinomialCoefficient(double n, double k) {
//        double binomialCoefficient = n;
//        double aux = 1;
//
//        for (double i = 1; i <= k + 1; i++) {
//            binomialCoefficient *= (n - i);
//            System.out.println(binomialCoefficient);
//        }
//
//        System.out.println(binomialCoefficient);
//        for (double i = 1; i <= k; i++) {
//            aux *= i;
//        }
//        System.out.println(aux);
//        binomialCoefficient /= aux;
//        System.out.println(binomialCoefficient);
//
//        System.out.println("Binomial coefficient: " + binomialCoefficient);
//    }
//}
