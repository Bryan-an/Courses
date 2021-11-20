package caballo_ajedrez;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class ChessHorse {
    private final int[] startCoordinates = new int[2];
    private final BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
    private final ArrayList<int[]> possibleFinalCoordinates = new ArrayList<>();

    public static void main(String[] args) {
        new ChessHorse().run();
    }

    public void run() {
        askForStartCoordinates();
        calculatePossibleFinalCoordinates();
        showResults();
    }

    public void askForStartCoordinates() {
        startCoordinates[0] = askForCoordinate("Row: ");
        startCoordinates[1] = askForCoordinate("Column: ");
    }

    public void calculatePossibleFinalCoordinates() {
        int[] oneStep = {1, -1};
        int[] threeSteps = {2, -2};

        for (int i = 0; i < oneStep.length; i++) {
            for (int j = 0; j < threeSteps.length; j++) {
                int[] finalCoordinates = move(oneStep[i], threeSteps[j]);
//                System.out.println(Arrays.toString(finalCoordinates));
                if (finalCoordinates != null) {
                    possibleFinalCoordinates.add(finalCoordinates);

                }

                finalCoordinates = move(threeSteps[j], oneStep[i]);
//                System.out.println(Arrays.toString(finalCoordinates));
                if (finalCoordinates != null) {
                    possibleFinalCoordinates.add(finalCoordinates);

                }
            }
        }
    }

    public void showResults() {
        System.out.printf("The horse can jump from (%d, %d) to:\n", startCoordinates[0], startCoordinates[1]);
        possibleFinalCoordinates.forEach(c -> System.out.printf("%d  %d\n", c[0], c[1]));
    }

    public int[] move(int xBoxes, int yBoxes) {
        int x = startCoordinates[0] + xBoxes;
        int y = startCoordinates[1] + yBoxes;

        if ((x >= 1 && x <= 8) && (y >= 1 && y <= 8)) {
            return new int[]{x, y};
        } else {
            return null;
        }
    }

    public int askForCoordinate(String request) {
        while (true) {
            try {
                System.out.print(request);
                int coordinate = Integer.parseInt(input.readLine());

                if (coordinate >= 1 && coordinate <= 8) return coordinate;
                else throw new Exception("\nInvalid position\n");
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

    }
}
