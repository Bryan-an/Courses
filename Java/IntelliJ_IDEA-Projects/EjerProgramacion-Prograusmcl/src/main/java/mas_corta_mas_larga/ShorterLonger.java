package mas_corta_mas_larga;

import java.io.*;

public class ShorterLonger {

    private String[] words;

    private BufferedReader input = new BufferedReader(
            new InputStreamReader(System.in));

    public static void main(String[] args) throws IOException {
        new ShorterLonger().askForWordsNumber();
    }

    public void askForWordsNumber() throws IOException {
        System.out.print("Quantity of words: ");
        int wordsNumber = Integer.parseInt(input.readLine());
        words = new String[wordsNumber];

        for (int i = 1; i <= wordsNumber; i++) {
            System.out.print("Word " + i + ": ");
            words[i - 1] = input.readLine();
        }

        displayShorterLonger();
    }

    public void displayShorterLonger() {
        String longer = words[0];
        String shorter = words[0];

        for (int i = 1; i < words.length; i++) {
            if (words[i].length() < shorter.length()) {
                shorter = words[i];
            }
            if (words[i].length() > longer.length()) {
                longer = words[i];
            }
        }

        System.out.println("The longer word is " + longer);
        System.out.println("The shorter word is " + shorter);
    }
}
