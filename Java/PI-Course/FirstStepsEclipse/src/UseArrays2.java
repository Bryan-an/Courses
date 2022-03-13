
public class UseArrays2 {
	public static void main(String[] args) {
		/*
		 * String[] countries = new String[8]; countries[0] = "Spain";
		 * countries[1] = "Mexico"; countries[2] = "Colombia"; countries[3] =
		 * "Peru"; countries[4] = "Chile"; countries[5] = "Argentina";
		 * countries[6] = "Ecuador"; countries[7] = "Venezuela";
		 */

		String[] countries = { "Spain", "Mexico", "Colombia", "Peru", "Chile",
				"Argentina", "Ecuador", "Venezuela" };

		/*
		 * for (int i = 0; i < countries.length; i++) {
		 * System.out.println("Country " + (i + 1) + ": " + countries[i]); }
		 */

		for (String element : countries) {
			System.out.println("Country: " + element);
		}
	}
}
