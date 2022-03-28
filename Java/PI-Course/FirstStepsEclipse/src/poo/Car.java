package poo;

public class Car {
	private int wheels;
	private int length;
	private int width;
	private int engine;
	private int platformWeight;
	private String color;
	private int totalWeight;
	private boolean leatherSeats, airConditioner;

	public Car() {
		wheels = 4;
		length = 2000;
		width = 300;
		engine = 1600;
		platformWeight = 500;
	}

	public String getGeneralData() { // Getter
		return "The platform of the car has " + wheels + " wheels. Measures "
				+ length / 1000 + " meters with a width of " + width
				+ " cm and a weight platform of " + platformWeight + " kg";
	}

	public void setColor(String color) { // Setter
		this.color = color;
	}

	public String getColor() {
		return "The color of the car is " + color;
	}

	public void setLeatherSeats(String leatherSeats) { // Setter
		if (leatherSeats.equalsIgnoreCase("si")) {
			this.leatherSeats = true;
		} else {
			this.leatherSeats = false;
		}
	}

	public String getSeats() { // Getter
		if (leatherSeats) {
			return "The car has leather seats";
		} else {
			return "The car has standard seats";
		}
	}

	public void setAirConditioner(String airConditioner) { // Setter
		if (airConditioner.equalsIgnoreCase("si")) {
			this.airConditioner = true;
		} else {
			this.airConditioner = false;
		}
	}

	public String getAirConditioner() {
		if (airConditioner) {
			return "The car incorporates air conditioner";
		} else {
			return "The car has air conditioning";
		}
	}

	public String getCarWeight() { // Setter + Getter
		int bodyWeight = 500;
		totalWeight = platformWeight + bodyWeight;

		if (leatherSeats) {
			totalWeight += 50;
		}

		if (airConditioner) {
			totalWeight += 20;
		}

		return "The weight of the car is " + totalWeight;
	}

	public int carPrice() { // Getter
		int finalPrice = 10000;

		if (leatherSeats) {
			finalPrice += 2000;
		}

		if (airConditioner) {
			finalPrice += 1500;
		}

		return finalPrice;
	}

}
