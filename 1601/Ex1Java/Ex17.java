//Задача 17: Простые числа в диапазоне
//Условие:
//Пользователь вводит два целых числа A и B. Программа должна вывести все простые числа в этом диапазоне (включительно).

package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex17 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите A (начало диапазона): ");
        int A = scanner.nextInt();
        System.out.print("Введите B (конец диапазона): ");
        int B = scanner.nextInt();

        List<Integer> simpleNumbers = new ArrayList<>();

        for(int num = A; num <= B ; num++) {
            boolean isSimple = true;
            for(int i = num-1;i>1 ;i--){
                if(num%i==0) {
                    isSimple = false;
                    break;
                }
            }
            if (isSimple) simpleNumbers.add(num);
        }

        System.out.println("Простые числа в диапазоне от " + A + " до " + B + " (включительно):"+ simpleNumbers);
    }
}