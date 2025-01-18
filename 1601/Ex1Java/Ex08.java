//Задача 8: Сумма четных чисел
//Условие:
//Пользователь вводит два целых числа A и B. Программа должна найти сумму всех четных чисел в диапазоне от A до B (включительно).

package Ex1Java;

import java.util.Scanner;

public class Ex08 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите A (начало диапазона): ");
        int A = scanner.nextInt();
        System.out.print("Введите B (конец диапазона): ");
        int B = scanner.nextInt();

        int sum = 0;
        for(int i = A; i <= B ; i++) {
            if (i%2==0) sum+=i;
        }

        System.out.print("Сумма всех четных числей в диапазоне от "+ A + " до " + B + " = " + sum);
    }
}