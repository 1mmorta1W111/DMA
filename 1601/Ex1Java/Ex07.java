//Задача 7: Обратный порядок чисел
//Условие:
//Пользователь вводит целое число N. Программа должна вывести числа от N до 1 в обратном порядке.

        package Ex1Java;

import java.util.Scanner;

public class Ex07 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите N: ");
        int N = scanner.nextInt();

        for(int i = N;i>0 ;i--) {
            System.out.print(i + " ");
        }
    }
}