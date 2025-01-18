//Задача 6: Проверка простого числа
//Условие:
//Пользователь вводит целое число. Программа должна проверить, является ли это число простым (делится только на 1 и само на себя).

package Ex1Java;

import java.util.Scanner;

public class Ex06 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите число (от 1): ");
        double num = scanner.nextInt();

        boolean isSimple = true;
        for(int i = (int)num-1;i>1 ;i--){
            if(num%i==0) {
                isSimple = false;
                break;
            }

        }

        System.out.print(isSimple);
    }
}