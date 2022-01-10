package com.desarrollo.firststeps;

public class ManipulateStrings {
    public static void main(String[] args) {
        String name = "Felipe Juan Froilán de Todos los Santos";
        System.out.println("My name is " + name);
        System.out.println("My name has " + name.length() + " letters");
        System.out.println("The first letter of " + name + " is " + name.charAt(0));

        int lastLetter;
        lastLetter = name.length();

        System.out.println("And the last letter is " + name.charAt(lastLetter - 1));
    }
}
