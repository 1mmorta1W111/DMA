//Задача 4: Сумма чисел от 1 до N
//Условие:
//Пользователь вводит целое число N. Программа должна вывести сумму всех чисел от 1 до N.

package Ex1Java;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите N: ");
        int N = scanner.nextInt();

        int sum = 0;
        for(int i = 1; i <=N; i++) sum+=i;

        System.out.print(sum);
    }
}