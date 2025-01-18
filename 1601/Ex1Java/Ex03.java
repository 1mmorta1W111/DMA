//Задача 3: Таблица умножения
//Условие:
//Напишите программу, которая выводит таблицу умножения на 5 (от 1 до 10).

package Ex1Java;

public class Ex03 {
    public static void main(String[] args) {
        String TableMaket =
                " |  1|2 |3 |4 |5 |6 |7 |8 |9 |10|" +
                "\n-------------------------------" +
                "\n5|  ";

        System.out.print(TableMaket);
        for(int i = 1; i <=10; i++){
            System.out.print((i*5)+"|");
        }
    }
}