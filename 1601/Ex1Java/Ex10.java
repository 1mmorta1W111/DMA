//Задача 10: Количество цифр в числе
//Условие:
//Пользователь вводит целое число. Программа должна вывести количество цифр в этом числе.

        package Ex1Java;

import java.util.List;
import java.util.Scanner;

public class Ex10 {
    public static void main(String[] args) {
        List<Character> allDigits = List.of('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите число (можно дробное): ");
        String userString = scanner.nextLine();

        int DigitsInStringCount = 0;
        for(char c: userString.toCharArray()) {
            if (allDigits.contains(c)) DigitsInStringCount++;
        }

        System.out.print("Количество цифр: "+DigitsInStringCount);
    }
}