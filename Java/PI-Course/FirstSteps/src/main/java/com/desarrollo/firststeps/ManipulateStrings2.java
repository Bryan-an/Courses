package com.desarrollo.firststeps;

public class ManipulateStrings2 {
    public static void main(String[] args) {
        String phrase = "Today is a great day to learn programming in Java";
        String summaryPhrase = phrase.substring(29, 49);
        System.out.println(summaryPhrase);
    }
}
