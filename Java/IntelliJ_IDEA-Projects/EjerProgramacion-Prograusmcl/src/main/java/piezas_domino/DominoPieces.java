package piezas_domino;

public class DominoPieces {

    public static void main(String[] args) {
        new DominoPieces().calculateTotal();
    }

    public void calculateTotal() {
        int total = 0;

        for (int i = 0; i <= 6; i++) {
            for (int j = 0; j <= i; j++) {
                total += i + j;
            }
        }

        System.out.println("Total points: " + total);
    }

}
