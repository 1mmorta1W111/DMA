//19. Конвертер температуры
//Напишите функцию, которая переводит температуру из Цельсия в Фаренгейт. Если температура меньше абсолютного нуля, выбрасывайте исключение.

package Ex2Kotlin

class IllegalTempException(message: String): Exception(message)

private fun ConvertToF(tempC: Double): Double{

    val convertedValue = (tempC*9.0/5.0)+32

    if (convertedValue <-459.67) throw IllegalTempException("Температура ниже абсолютного нуля")

    return convertedValue
}

fun main() {
    print("Введите температуру в градусах Цельсия: ")
    val userNum: Double = readln().toDouble()
    try {
        val convertedTemp = ConvertToF(userNum)
        println("Температура в градусах Фаренгейта: $convertedTemp")
    } catch (e: IllegalTempException) {
        println("Ошибка: ${e.message}")
    }
}