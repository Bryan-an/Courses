package poo;

import java.util.Date;
import java.util.GregorianCalendar;

public class UsePerson {

	public static void main(String[] args) {
		Person[] people = new Person[2];
		people[0] = new Employee2("Luis Conde", 50000, 2009, 02, 25);
		people[1] = new Student("Ana López", "Biological");

//		Stream.of(people).forEach(
//				(person) -> System.out.println(person.giveMeDescription()));

		for (Person p : people) {
			System.out.println(p.giveMeName() + ", " + p.giveMeDescription());
		}

	}

}

abstract class Person {
	public Person(String name) {
		this.name = name;
	}

	public String giveMeName() {
		return name;
	}

	public abstract String giveMeDescription();

	private String name;
}

class Employee2 extends Person {

	public Employee2(String name, double salary, int year, int month, int day) {
		super(name);
		this.salary = salary;

		GregorianCalendar calendar =
				new GregorianCalendar(year, month - 1, day);

		contractRegistrationDate = calendar.getTime();
		++nextId;
		id = nextId;
	}

	@Override
	public String giveMeDescription() {
		return "This employee has an id= " + id + " with a salary= " + salary;
	}

	public Date giveMeContractDate() { // getter
		return contractRegistrationDate;
	}

	public void raiseSalary(double percentage) { // setter
		double rise = salary * percentage / 100;
		salary += rise;
	}

	private double salary;
	private Date contractRegistrationDate;
	private static int nextId;
	private int id;
}

class Student extends Person {

	public Student(String name, String career) {
		super(name);
		this.career = career;
	}

	@Override
	public String giveMeDescription() {
		return "This student is studying the " + career + " career";
	}

	private String career;

}
