package digitos;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Digits {

    private final BufferedReader input = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String[] args){
        new Digits().askNumber();
    }

    public void askNumber(){
        boolean valid = false;

        do{
            try{
                System.out.print("Enter a number: ");
                int number = Integer.parseInt(input.readLine());
                System.out.println(number + " has " + String.valueOf(number).length() + " digits");
                valid = true;
            }catch (Exception e){
                System.out.println("\nInvalid value\n");
            }
        }while(!valid);
    }
}
