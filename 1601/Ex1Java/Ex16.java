//Задача 16: Количество положительных и отрицательных чисел
//Условие:
//Пользователь вводит размер массива и его элементы. Программа должна подсчитать и вывести количество положительных и отрицательных чисел в массиве.

package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex16 {
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

        int posNumbersCount = 0;
        int negNumbersCount = 0;
        for(int num: userArray){
            if (num>0) posNumbersCount++;
            else if (num<0) negNumbersCount++;
        }

        System.out.println("Ваш массив:\n" + userArray);
        System.out.println("Количество положительных чисел: " + posNumbersCount);
        System.out.println("Количество отрицательных чисел: " + negNumbersCount);
    }
}