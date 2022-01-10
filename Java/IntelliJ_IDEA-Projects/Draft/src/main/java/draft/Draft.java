package draft;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Draft {
    private double[] grades = new double[5];
    private BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
    private double average;

    public static void main(String[] args) {
        new Draft().run();
    }

    public void run() {
        askForGrades();
        printLowerGrade();
        printHigherGrade();
        printAverage();
    }

    public void askForGrades() {
        for (int i = 0; i < grades.length; i++) {
            askForGrade(i);
        }

        Arrays.sort(grades);
    }

    public void askForGrade(int index) {
        while(true) {
            try {
                System.out.print("Enter a grade: ");
                grades[index] = Double.parseDouble(input.readLine());
                return;
            }catch (Exception e) {
                System.out.println("Invalid data");
            }
        }
    }

    public void printLowerGrade() {
        System.out.println("Lower grade: " + grades[0]);
    }

    public void printHigherGrade() {
        System.out.println("Higher grade: " + grades[grades.length - 1]);
    }

    public void printAverage() {
        average = Arrays.stream(grades).average().getAsDouble();

        System.out.println("Average: " + average);
    }

}