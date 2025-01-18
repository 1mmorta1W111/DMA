//Задача 18: Подсчет гласных и согласных в строке
//Условие:
//Пользователь вводит строку. Программа должна подсчитать и вывести количество гласных и согласных букв в этой строке.

package Ex1Java;

import java.util.Scanner;
import java.util.Set;

public class Ex18 {
    public static void main(String[] args) {
        Set<Character> vowels = Set.of(
                'а', 'е', 'ё', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я',
                'А', 'Е', 'Ё', 'И', 'О', 'У', 'Ы', 'Э', 'Ю', 'Я'
        );

        Set<Character> consonants = Set.of(
                'б', 'в', 'г', 'д', 'ж', 'з', 'й', 'к', 'л', 'м',
                'н', 'п', 'р', 'с', 'т', 'ф', 'х', 'ц', 'ч', 'ш', 'щ',
                'Б', 'В', 'Г', 'Д', 'Ж', 'З', 'Й', 'К', 'Л', 'М',
                'Н', 'П', 'Р', 'С', 'Т', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ'
        );

        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите строку: ");
        String userString = scanner.nextLine();

        int vowelCount = 0;
        int consCount = 0;

        for(char c: userString.toCharArray()){
            if(vowels.contains(c)) vowelCount++;
            else if (consonants.contains(c)) consCount++;
        }

        System.out.print("Гласныe: " +  vowelCount
                + "\nСогласныe: " + consCount);
    }
}