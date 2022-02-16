import java.util.Scanner;

public class GuessNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int random = (int) (Math.random() * 100);

		Scanner input = new Scanner(System.in);
		int number = 0;
		int attempts = 0;

		while (number != random) {
			attempts++;
			System.out.println("Enter a number, please");
			number = input.nextInt();

			if (random < number) {
				System.out.println("Lower");
			} else if (random > number) {
				System.out.println("Higher");
			}
		}

		System.out.println("Correct. You have achieve it in " + attempts + " attempts");
	}

}
