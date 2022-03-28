package poo;

public class UseVehicle {
	public static void main(String args[]) {
		Car myCar1 = new Car();
		myCar1.setColor("Red");

		Van myVan1 = new Van(7, 580);
		myVan1.setColor("Blue");
		myVan1.setLeatherSeats("Si");
		myVan1.setAirConditioner("Si");

		System.out.println(myCar1.getGeneralData() + " " + myCar1.getColor());
		System.out.println(
				myVan1.getGeneralData() + " " + myVan1.tellMeVanData());
	}
}
