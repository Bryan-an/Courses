import java.util.Scanner;

public class UseSizes {

//	enum Size {
//		SMALL, MEDIUM, BIG, VERY_BIG
//	}

	enum Size {
		SMALL("S"), MEDIUM("M"), BIG("L"), VERY_BIG("XL");

		private Size(String abbreviation) {
			this.abbreviation = abbreviation;
		}

		public String giveMeAbbreviation() {
			return abbreviation;
		}

		private String abbreviation;
	}

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Write a size: SMALL, MEDIUM, BIG, VERY_BIG");

		String dataInput = input.next().toUpperCase();

		Size theSize = Enum.valueOf(Size.class, dataInput);

		System.out.println("Size=" + theSize);
		System.out.println("Abbreviation=" + theSize.giveMeAbbreviation());
	}

}
