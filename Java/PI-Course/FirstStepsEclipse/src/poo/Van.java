package poo;

public class Van extends Car {
	private int carryingCapacity;
	private int extraSeats;

	public Van(int extraSeats, int carryingCapacity) {
		super(); // Call to the constructor of the parent class
		this.carryingCapacity = carryingCapacity;
		this.extraSeats = extraSeats;
	}

	public String tellMeVanData() {
		return " The carrying capacity is: " + carryingCapacity
				+ " and the extra seats are: " + extraSeats;
	}
}
