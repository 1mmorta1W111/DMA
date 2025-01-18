//Задача 11: Факториал числа
//Условие:
//Пользователь вводит целое число N. Программа должна вычислить факториал этого числа (N!).

package Ex1Java;

import java.util.Scanner;

public class Ex11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите число (больше нуля): ");
        int userNum = scanner.nextInt();

        int factorial = 1;
        for(int i = 1; i <= userNum; i++) factorial=factorial*i;

        System.out.print(userNum+"! = "+ +factorial);
    }
}