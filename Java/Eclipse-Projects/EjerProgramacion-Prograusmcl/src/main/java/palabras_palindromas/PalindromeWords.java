package palabras_palindromas;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class PalindromeWords {
	private BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
	private String word;

	public static void main(String[] args) {
		new PalindromeWords().run();
	}

	public void run() {
		askForWord();
		showResult();
	}

	public void askForWord() {
		boolean valid = false;

		do {
			try {
				System.out.print("Inter a word: ");
				word = input.readLine();

				if (!word.matches("[a-zA-Z\s]+")) {
					throw new Exception();
				}

				word = word.replace(" ", "");
				valid = true;

			} catch (Exception e) {
				System.out.println("Invalid data, try again please");
			}
		} while (!valid);
	}

	public void showResult() {
		String reversedWord = new StringBuilder(word).reverse().toString();
		String result = reversedWord.toLowerCase().equals(word.toLowerCase()) ? "It is palindrome"
				: "It's not palindrome";

		System.out.println(result);
	}
}
