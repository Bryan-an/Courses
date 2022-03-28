package poo;

public class Tests {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Employees worker1 = new Employees("Paco");
		Employees worker2 = new Employees("Ana");
		Employees worker3 = new Employees("Antonio");
		Employees worker4 = new Employees("María");

		worker1.changeSection("RRHH");

		System.out.println(worker1.returnData() + "\n" + worker2.returnData()
				+ "\n" + worker3.returnData() + "\n" + worker4.returnData());

		System.out.println(Employees.giveMeNextId());

	}

}

class Employees {

	public Employees(String name) {
		this.name = name;
		section = "Management";
		id = nextId;
		nextId++;
	}

	public void changeSection(String section) { // setter
		this.section = section;
	}

	public String returnData() {
		return "The name is: " + name + ", the section is " + section
				+ " and the id=" + id;
	}

	public static String giveMeNextId() {
		return "The next id is: " + nextId;
	}

	private final String name;
	private String section;
	private int id;
	private static int nextId = 1;
}
