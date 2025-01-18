//Задача 13: Палиндром
//Условие:
//Пользователь вводит строку. Программа должна проверить, является ли эта строка палиндромом (читается одинаково слева направо и справа налево).

package Ex1Java;

import java.util.Scanner;

public class Ex13 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите строку: ");
        String userString = scanner.nextLine();

        boolean isPolindrome = true;
        for(int leftIndex = 0, rightIndex = userString.length() - 1;
            leftIndex < userString.length() / 2 + 1;
            leftIndex++, rightIndex--) {
            if (userString.charAt(leftIndex)!=userString.charAt(rightIndex)) isPolindrome = false;
        }

        System.out.print(isPolindrome);
    }
}