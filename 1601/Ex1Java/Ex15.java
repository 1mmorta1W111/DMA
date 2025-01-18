//Задача 15: Сумма всех элементов массива
//Условие:
//Пользователь вводит размер массива и его элементы. Программа должна вычислить и вывести сумму всех элементов массива.


package Ex1Java;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Ex15 {
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

        int sum = 0;
        for(int num: userArray) sum+=num;

        System.out.println("Ваш массив:\n" + userArray);
        System.out.print("Сумма элементов: " + sum);
    }
}