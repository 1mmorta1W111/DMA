//11. Конвертация в двоичную систему
//Создайте функцию, которая конвертирует целое число в двоичную строку. Если число отрицательное, выбрасывайте исключение.

package Ex2Kotlin

private fun ConvertToBinary(number: Int): String{
    if (number<0) throw IllegalArgumentException("Число не может быть отрицательным")

    return number.toString(2)
}

fun main() {
    print("Введите число: ")
    val userNum = readln().toInt()

    try {
        val binNum = ConvertToBinary(userNum)
        println("Число в двоичной системе счисления: $binNum")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}