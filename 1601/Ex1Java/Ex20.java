//Задача 20: Число Армстронга
//Условие:
// Пользователь вводит целое число. Программа должна проверить, является ли это число числом Армстронга (сумма цифр в степени, равной количеству цифр, равна самому числу).

package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class Ex20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Set<Character> allDigits = Set.of('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

        List<Integer> digitsInNum = new ArrayList<>();
        int digitsCount = 0;
        double digitsInDigitsCountPowSum = 0;


        System.out.print("Введите число: ");
        String userNum = scanner.next();

        for (char c: userNum.toCharArray()) {
            if(allDigits.contains(c)) {
                digitsCount++;
                digitsInNum.add(Character.getNumericValue(c));
            }
        }

        for (int digit: digitsInNum) digitsInDigitsCountPowSum += Math.pow(digit, digitsCount);

        boolean isArmstrong;
        if(digitsInDigitsCountPowSum == Integer.parseInt(userNum)) isArmstrong = true;
        else isArmstrong = false;

        System.out.print(isArmstrong);
    }
}