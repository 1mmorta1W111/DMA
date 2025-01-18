//Задача 12: Сумма цифр числа
//Условие:
//Пользователь вводит целое число. Программа должна найти сумму всех цифр этого числа.

package Ex1Java;

import java.util.List;
import java.util.Scanner;

public class Ex12 {
    public static void main(String[] args) {
        List<Character> allDigits = List.of('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите неотрицательное число (можно дробное): ");
        String userNum = scanner.nextLine();

        int DigitsInStringSum = 0;
        for(char c: userNum.toCharArray()) {
            if (allDigits.contains(c)) DigitsInStringSum+=Character.getNumericValue(c);
        }

        System.out.print("Сумма цифр в числе: "+DigitsInStringSum);
    }
}