package test;

import java.io.*;
import java.util.Locale;

public class Main {

    //Fields
    private final File file;
    private int aCounter;
    private int eCounter;
    private int iCounter;
    private int oCounter;
    private int uCounter;

    public Main() {
        file = new File("src/main/java/files/file.txt");
        //readFile();
        //writeFile();
        readWriteFileWithBuffered();
    }

    //Main method
    public static void main(String[] args) {
        new Main();
    }

    public void readFile() {
        int character;

        try (FileReader input = new FileReader(file)) {
            while ((character = input.read()) != -1) {
                if (character == 'a' || character == 'A') {
                    aCounter++;
                } else if (character == 'e' || character == 'E') {
                    eCounter++;
                } else if (character == 'i' || character == 'I') {
                    iCounter++;
                } else if (character == 'o' || character == 'O') {
                    oCounter++;
                } else if (character == 'u' || character == 'U') {
                    uCounter++;
                }
            }

            showCounters();
        } catch (IOException e) {
            System.out.println("\nError reading file");
        }
    }

    public void showCounters() {
        System.out.println("\na: " + aCounter);
        System.out.println("e: " + eCounter);
        System.out.println("i: " + iCounter);
        System.out.println("o: " + oCounter);
        System.out.println("u: " + uCounter);
    }

    public void writeFile() {
        BufferedReader input = new BufferedReader(new InputStreamReader(
                System.in));

        try (FileWriter output = new FileWriter(file)) {
            System.out.print("Enter a text: ");
            String text = input.readLine();

            for (int i = text.length() - 1; i >= 0; i--) {
                output.write(text.charAt(i));
            }

            System.out.println("\nFile written successfully");
        } catch (IOException e) {
            System.out.println("\nError writing file");
        }
    }

    public void readWriteFileWithBuffered() {
        File howler = new File("src/main/java/files/howler.txt");

        try (BufferedReader input = new BufferedReader(new FileReader(file));
             BufferedWriter output = new BufferedWriter(new FileWriter(howler))) {

            String line;

            while ((line = input.readLine()) != null) {
                output.write(line.toUpperCase());
                output.newLine();
            }

        } catch (IOException e) {
            System.out.println("\nError");
        }
    }

}
