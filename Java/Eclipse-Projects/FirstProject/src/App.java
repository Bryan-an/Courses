
public class App {
	
	private int number;

	public static void main(String[] args) {
		System.out.println("Hello world");
		new App().printGreet();
	}
	
	public void printGreet() {
		System.out.println("Good Morning");
		add(1, 3);
	}
	
	public void add(int num1, int num2) {
		this.number = num1;
		System.out.println(num2 + number);
	}


}
