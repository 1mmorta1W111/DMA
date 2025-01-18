package Ex1Java;

import java.util.Scanner;

public class Ex01 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите число: ");
        int inputNum = scanner.nextInt();

        if (inputNum%2==0) {
            System.out.print("Число " + inputNum + " – чётное");
        }
        else System.out.print("Число " + inputNum + " – нечётное");
    }
}