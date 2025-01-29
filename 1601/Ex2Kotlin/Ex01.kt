//1. Функция для нахождения максимума.
//Напишите функцию, которая принимает два числа и возвращает максимальное из них. Если числа равны, выбрасывайте исключение с сообщением об ошибке.

package Ex2Kotlin

private fun max(a: Int, b: Int): Int {
    if (a == b) throw IllegalArgumentException("Числа равны")
    return if (a > b) a else b
}

fun main() {
    print("Введите первое число: ")
    val firstUserNumber: Int = readln().toInt()
    print("Введите второе число: ")
    val secondUserNumber: Int = readln().toInt()

    try {
        val result = max(firstUserNumber, secondUserNumber)
        println("Максимальное число: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}