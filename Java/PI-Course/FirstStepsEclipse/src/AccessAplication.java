import javax.swing.JOptionPane;

public class AccessAplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String key = "Juan";
		String password = "";

		while (key.equals(password) == false) {
			password = JOptionPane.showInputDialog("Enter the password, please");

			if (key.equals(password) == false) {
				System.out.println("Invalid password");
			}
		}

		System.out.println("Valid password. Allowed access");
	}

}
