import java.util.*;

public class EvaluateAge {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner input = new Scanner(System.in);
		System.out.println("Enter you age, please");
		int age = input.nextInt();
		
		if (age < 18) {
			System.out.println("You're teenager");
		}else if (age < 40) {
			System.out.println("You're young");
		}else if (age <65) {
			System.out.print("You're old");
		}else {
			System.out.println("Be carefull");
		}
	}

}
