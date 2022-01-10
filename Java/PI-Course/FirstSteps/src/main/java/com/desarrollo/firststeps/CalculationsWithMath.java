package com.desarrollo.firststeps;

public class CalculationsWithMath {

    public static void main(String[] args) {
//        double root = Math.sqrt(9);

        double base = 5;
        double exponent = 3;
        int result = (int) Math.pow(base, exponent);
        System.out.println("The result of " + (int) base + " to the power of " + (int) exponent + " is " + result);
    }
}
