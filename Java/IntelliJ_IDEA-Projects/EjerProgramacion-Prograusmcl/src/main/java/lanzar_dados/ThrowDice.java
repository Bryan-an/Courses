package lanzar_dados;

public class ThrowDice {
    public static void main(String[] args) {
        new ThrowDice().showCombinations();
    }

    public void showCombinations() {
        for (int i = 1; i <= 6; i++) {
            for (int j = 1; j <= 6; j++) {
                System.out.println(i + " " + j);
            }
            System.out.println();
        }
    }
}
