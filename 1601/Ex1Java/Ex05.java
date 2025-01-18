//Задача 5: Число Фибоначчи
//Условие:
//Пользователь вводит целое число N. Программа должна вывести первые N чисел Фибоначчи.

package Ex1Java;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.List;

public class Ex05 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        List<Integer> fibonachiNums = new ArrayList<>();
        fibonachiNums.add(0);
        fibonachiNums.add(1);

        System.out.print("Введите N: ");
        int N = scanner.nextInt();

        for(int i = 2; i<N;i++){
            fibonachiNums.add(fibonachiNums.get(i-1)+fibonachiNums.get(i-2));
        }

        for(int i = 0; i < N; i++){
            System.out.print(fibonachiNums.get(i) + " ");
        }
    }
}