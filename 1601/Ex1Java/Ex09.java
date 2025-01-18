//Задача 9: Реверс строки
//Условие:
//Пользователь вводит строку. Программа должна вывести эту строку в обратном порядке.

package Ex1Java;

import java.util.Scanner;

public class Ex09 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите строку: ");
        String userString = scanner.nextLine();

        for(int i = userString.length()-1; i >= 0 ; i--) {
            System.out.print(userString.charAt(i));
        }
    }
}