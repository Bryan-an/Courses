package poo;

import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;

public class UseEmployee {

	public static void main(String[] args) {
		Leadership bossRRHH = new Leadership("Juan", 55000, 2006, 9, 25);
		bossRRHH.setIncentive(2570);

		Employee[] myEmployees = new Employee[6];
		myEmployees[0] = new Employee("Ana", 30000, 2000, 07, 07);
		myEmployees[1] = new Employee("Carlos", 50000, 1995, 06, 15);
		myEmployees[2] = new Employee("Paco", 25000, 2005, 9, 25);
		myEmployees[3] = new Employee("Antonio", 47500, 2009, 11, 9);
		myEmployees[4] = bossRRHH; // Polymorphism in action. Substitution
									// principle
		myEmployees[5] = new Leadership("María", 95000, 1999, 5, 26);

		Leadership bossFinance = (Leadership) myEmployees[5];
		bossFinance.setIncentive(55000);

		Employee commercialDirector =
				new Leadership("Sandra", 85000, 2012, 05, 05);

		Comparable example = new Employee("Elisabeth", 95000, 2011, 06, 07);

		for (Employee e : myEmployees) {
			e.raiseSalary(5);
		}

		Arrays.sort(myEmployees);

		for (Employee e : myEmployees) {
			System.out.println(
					"Name: " + e.giveMeName() + " Salary: " + e.giveMeSalary()
							+ " Discharge Date: " + e.giveMeContractDate());
		}
	}

}

class Employee implements Comparable {

	public Employee(String name, double salary, int year, int month, int day) {
		this.name = name;
		this.salary = salary;
		GregorianCalendar calendar =
				new GregorianCalendar(year, month - 1, day);
		contractRegistrationDate = calendar.getTime();

		++nextId;
		id = nextId;
	}

	public Employee(String name) {
		this(name, 30000, 2000, 01, 01);
	}

	public String giveMeName() { // getter
		return name + " Id: " + id;
	}

	public double giveMeSalary() { // getter
		return salary;
	}

	public Date giveMeContractDate() { // getter
		return contractRegistrationDate;
	}

	public void raiseSalary(double percentage) { // setter
		double rise = salary * percentage / 100;
		salary += rise;
	}

	@Override
	public int compareTo(Object myObject) {
		Employee anotherEmployee = (Employee) myObject;

		if (this.salary < anotherEmployee.salary) {
			return -1;
		}

		if (this.salary > anotherEmployee.salary) {
			return 1;
		}

		return 0;
	}

	private String name;
	private double salary;
	private Date contractRegistrationDate;
	private static int nextId;
	private int id;
}

class Leadership extends Employee {
	public Leadership(String name, double salary, int year, int month,
			int day) {
		super(name, salary, year, month, day);
	}

	public void setIncentive(double incentive) {
		this.incentive = incentive;
	}

	@Override
	public double giveMeSalary() { // getter
		double bossSalary = super.giveMeSalary();
		return bossSalary + incentive;
	}

	private double incentive;
}
