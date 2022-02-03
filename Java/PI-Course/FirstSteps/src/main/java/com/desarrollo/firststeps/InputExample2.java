package com.desarrollo.firststeps;

import javax.swing.*;

public class InputExample2 {
    public static void main(String[] args) {
        String username = JOptionPane.showInputDialog("Enter your name, please");
        String age = JOptionPane.showInputDialog("Enter your age, please");
        int userAge = Integer.parseInt(age);

        userAge++;

        System.out.println("Hello " + username + ". Next year you will be " + (userAge) + " years old");
    }
}
