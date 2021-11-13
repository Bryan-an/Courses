//package contar_combinaciones_dados;
//
//import java.util.function.Predicate;
//
//import static input.AskForData.*;
//
//public class Dices {
//
//    int score;
//    int combinations = 0;
//
//    public static void main(String[] args) {
//        new Dices().askForScore();
//    }
//
//    public void askForScore() {
//        String request = "Enter the score: ";
//        Predicate<Integer> filter = n -> n >= 2;
//        String errorMessage = "The score must be >= 2";
//
//        score = askForInt(request, filter, errorMessage);
//
//        calculateCombinations();
//    }
//
//    public void calculateCombinations() {
//        for (int i = 1; i <= 6; i++) {
//            if (score - i >= 1 && score - i <= 6) {
//                combinations++;
//            }
//        }
//
//        System.out.println("There is/are " + combinations + " to get " + score);
//    }
//
//}
