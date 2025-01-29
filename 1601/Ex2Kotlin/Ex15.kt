//15. Проверка даты
//Напишите функцию, которая проверяет, является ли строка корректной датой в формате "dd.MM.yyyy". Если формат неверен, выбрасывайте DateTimeParseException.

package Ex2Kotlin

import java.time.LocalDate
import java.time.format.DateTimeFormatter

class DateTimeParseException(message: String) : Exception(message)

fun validateDate(date: String) {
    val regex = Regex("""\d{2}\.\d{2}\.\d{4}""")

    if (!regex.matches(date)) {
        throw DateTimeParseException("Неверный формат даты: $date")
    }

    try {
        val formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy")
        LocalDate.parse(date, formatter)
    } catch (e: Exception) {
        throw DateTimeParseException("Несуществующая дата: $date")
    }
}

fun main() {
    print("Введите дату в формате dd.MM.yyyy: ")
    val userInput = readln()

    try {
        validateDate(userInput)
        println("Дата корректна!")
    } catch (e: DateTimeParseException) {
        println("Ошибка: ${e.message}")
    }
}