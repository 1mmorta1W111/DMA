//Задача 19: Перестановка слов в строке
//Условие:
//Пользователь вводит строку, состоящую из нескольких слов. Программа должна вывести слова в обратном порядке.

package Ex1Java;

import java.util.Scanner;

public class Ex19 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите строку: ");
        String userString = scanner.nextLine();

        String[] words = userString.split("[\\s,\\.]+");

        for (int i = words.length-1; i>=0; i--){
            System.out.print(words[i]+" ");
        }
    }
}