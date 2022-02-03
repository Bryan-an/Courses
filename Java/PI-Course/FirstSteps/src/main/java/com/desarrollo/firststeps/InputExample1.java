package com.desarrollo.firststeps;

import java.util.Scanner;

public class InputExample1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Enter your name, please");

        String username = input.nextLine();

        System.out.println("Enter your age, please");

        int age = input.nextInt();

        System.out.println("Hello " + username + ". Next year you will be " + (age + 1) + " years old.");
    }
}
