//20. Проверка строки на пустоту.
//Создайте функцию, которая проверяет, является ли строка пустой или null. Если строка пустая или равна null, выбрасывайте исключение.

package Ex2Kotlin

fun IsNotEmpty(string: String?): Boolean{

    if (string == null || string=="" ) throw NullPointerException("Строка пустая или null")

    return true
}

fun main() {
    print("Введите строку: ")
    val userString: String? = readlnOrNull()

    try {
        if (IsNotEmpty(userString)) println("Строка не null и не пустая")
    } catch (e: NullPointerException) {
        println("Ошибка: ${e.message}")
    }
}