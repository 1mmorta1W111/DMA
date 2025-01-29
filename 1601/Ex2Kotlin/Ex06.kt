//6. Факториал
//Напишите функцию, которая вычисляет факториал числа. Если число отрицательное, выбрасывайте исключение.

package Ex2Kotlin

private fun getFactorial(num: Int): Int{
    if (num<0) throw IllegalArgumentException("Число не может быть отрицательным")

    var result = 1
    for (i in 1..num){
        result *= i
    }
    return result
}

fun main() {
        print("Введите число: ")
        val userNum: Int = readln().toInt()
    try {
        val numRoot: Int = getFactorial(userNum)
        println("Факториал: $numRoot")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}