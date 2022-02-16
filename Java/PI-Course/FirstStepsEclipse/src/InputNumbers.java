import javax.swing.*;

public class InputNumbers {

	public static void main(String[] args) {
		String num1 = JOptionPane.showInputDialog("Enter a number");
		double num2 = Double.parseDouble(num1);
		
		System.out.print("The sqrt of " + num2 + " is ");
		System.out.printf("%1.2f", Math.sqrt(num2));
	}

}
