import java.util.Scanner;

import javax.swing.JOptionPane;

public class Areas {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);

		System.out.println("Choose an option: \n1: Square\n2: Rectangle\n3: Triangle\n4: Circle");

		int figure = input.nextInt();

		switch (figure) {
		case 1:
			int side = Integer.parseInt(JOptionPane.showInputDialog("Enter the side"));

			System.out.println("The square's area is " + Math.pow(side, 2));
			break;

		case 2:
			int base = Integer.parseInt(JOptionPane.showInputDialog("Enter the base"));
			int height = Integer.parseInt(JOptionPane.showInputDialog("Enter the height"));

			System.out.println("The rectangle's area is " + (base * height));
			break;

		case 3:
			base = Integer.parseInt(JOptionPane.showInputDialog("Enter the base"));
			height = Integer.parseInt(JOptionPane.showInputDialog("Enter the height"));

			System.out.println("The triangle's area is " + ((base * height) / 2));
			break;

		case 4:
			int radius = Integer.parseInt(JOptionPane.showInputDialog("Enter the radius"));

			System.out.print("The circle's area is ");
			System.out.printf("%1.2f", Math.PI * Math.pow(radius, 2));
			break;
		default:
			System.out.println("The option is incorrect");
		}
	}

}
