//12. Проверка делимости
//Реализуйте функцию, которая принимает два числа и проверяет, делится ли первое число на второе. Если второе число равно нулю, выбрасывайте ArithmeticException.

package Ex2Kotlin

import java.lang.ArithmeticException

private fun IsDividing(firstNum: Int, secondNum: Int): Boolean{
    if (secondNum==0) throw ArithmeticException("Делитель не может быть равным нулю")

    return if (firstNum%secondNum==0) true else false
}

fun main() {
    print("Введите число: ")
    val firstUserNum = readln().toInt()

    print("Введите делитель: ")
    val secondUserNum = readln().toInt()

    try {
        val isDividing = IsDividing(firstUserNum, secondUserNum)
        println("Число $firstUserNum делится на $secondUserNum без остатка – $isDividing")
    } catch (e: ArithmeticException) {
        println("Ошибка: ${e.message}")
    }
}