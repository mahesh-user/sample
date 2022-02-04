package com.bridgelabz;

import java.util.Scanner;

public class PrimeNumber {
    public static void main(String[] args) {
        Scanner value = new Scanner(System.in);
        System.out.println("enter a number");
        int a = value.nextInt();
        int check = 0;
        for (int i = 2; i < a; i++) {
        }
        if (check == a % 2) {
                System.out.println(" value is prime number");
            } else {
                System.out.println(" value is not prime number");
            }

    }
}