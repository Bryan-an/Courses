import javax.swing.JOptionPane;

public class CheckMail {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int at = 0;
		boolean dot = false;

		String mail = JOptionPane.showInputDialog("Enter mail");

		for (int i = 0; i < mail.length(); i++) {
			if (mail.charAt(i) == '@') {
				at++;
			}

			if (mail.charAt(i) == '.') {
				dot = true;
			}
		}

		if (at == 1 && dot == true) {
			System.out.println("It's correct");
		} else {
			System.out.println("It's incorrect");
		}
	}

}
