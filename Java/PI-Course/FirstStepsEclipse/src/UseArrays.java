public class UseArrays {
	public static void main(String[] args) {
		/*
		 * int[] myArray = new int[5];
		 * 
		 * myArray[0] = 5; myArray[1] = 38; myArray[2] = -15; myArray[3] = 92;
		 * myArray[4] = 71;
		 */

		int[] myArray = { 5, 28, -15, 92, 71, 95, 85, 65, 25, 14, 78, 95, 23 };

		for (int i = 0; i < myArray.length; i++) {
			System.out.println("Index value " + i + " = " + myArray[i]);
		}
	}
}
