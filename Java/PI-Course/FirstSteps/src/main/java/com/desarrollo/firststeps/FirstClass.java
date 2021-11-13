/*
 * First class
 * Created  by Bryan on 22/04/2021
 */
package com.desarrollo.firststeps;

import java.util.Scanner;

/**
 * Main Class
 *
 * @author bryan
 */
public class FirstClass {

    private String name;
    private Scanner sc = new Scanner(System.in);

    public FirstClass() {
        askName();
    }

    public void askName() {
        System.out.println("Enter your name: ");
        name = sc.nextLine();
        printGreating(name);
    }

    public void printGreating(String name) {
        System.out.print("Hi " + name);
    }

    public static void main(String[] args) {
        FirstClass greating = new FirstClass();
    }
}
