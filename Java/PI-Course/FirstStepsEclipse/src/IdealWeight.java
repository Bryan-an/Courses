import javax.swing.JOptionPane;

public class IdealWeight {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String gender = "";

		do {
			gender = JOptionPane.showInputDialog("Enter your gender (M/F)");
		} while (gender.equalsIgnoreCase("M") == false && gender.equalsIgnoreCase("F") == false);

		int height = Integer.parseInt(JOptionPane.showInputDialog("Enter your height in cm"));

		int idealWeight = 0;

		if (gender.equalsIgnoreCase("M")) {
			idealWeight = height - 110;
		} else if (gender.equalsIgnoreCase("F")) {
			idealWeight = height - 120;
		}

		System.out.println("Your ideal weight is " + idealWeight + " kg");
	}

}
