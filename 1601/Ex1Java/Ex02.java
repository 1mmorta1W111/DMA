//Задача 2: Минимальное из трех чисел
//Условие:
//Пользователь вводит три целых числа. Программа должна найти и вывести минимальное из них.

package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        List<Integer> input = new ArrayList<>();

        for (int i = 0; i<3;i++){
            System.out.print("введите число "+ (i+1) + ": ");
            input.add(scanner.nextInt());
        }

        int min = input.get(0);
        for(int num: input){
            if(num<min) min = num;
        }

        System.out.println("Минимальное число: " + min);
        // или
        System.out.println("Минимальное число: " + input.stream().min(Integer::compare));
    }
}