//Задача 14: Найти максимальное число в массиве
//Условие:
//Пользователь вводит размер массива и элементы массива. Программа должна найти и вывести максимальное число в массиве.

package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex14 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        List<Integer> userArray = new ArrayList<>();
        int userArraySize;

        System.out.print("Введите размер массива: ");
        userArraySize = scanner.nextInt();

        int currentElement;
        for (int i = 1; i <= userArraySize; i++){
            System.out.print("Введите элемент " + i + ": ");
            currentElement = scanner.nextInt();
            userArray.add(currentElement);
        }

        int max = userArray.get(0);
        for(int num: userArray){
            if(num>max) max = num;
        }

        System.out.println("Ваш массив:\n" + userArray);
        System.out.print("Максимальный элемент: " + max);
    }
}