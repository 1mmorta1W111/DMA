//3. Конвертер строк в числа
//Напишите функцию, которая принимает строку и пытается конвертировать её в целое число. Если строка не может быть конвертирована, выбрасывайте NumberFormatException.

package Ex2Kotlin

private fun convertToInt32(string: String): Int {
    return string.toIntOrNull() ?: throw NumberFormatException("Строка '$string' не может быть конвертирована в целое число")
}

fun main() {
    print("Введите ваше число: ")
    val userNumber: String = readln()

    try {
        val convertedNum = convertToInt32(userNumber)
        println("Конвертированное число: $convertedNum")
    } catch (e: NumberFormatException) {
        println("Ошибка: ${e.message}")
    }
}