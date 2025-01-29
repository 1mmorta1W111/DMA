//9. Обрезка строки
//Напишите функцию, которая принимает строку и число символов. Функция должна возвращать строку, обрезанную до указанного числа символов. Если число символов больше длины строки, выбрасывайте исключение.

package Ex2Kotlin

private fun CutString(string: String, cutSize: Int): String{

    if (cutSize>string.length) throw IllegalArgumentException("Количество символов для удаления не может быть больше длины строки")

    return string.substring(0, string.length-cutSize)
}

fun main() {

    print("Введите строку: ")
    val userString = readln()
    print("Введите число (число символов для удаления): ")
    val cutSize = readln().toInt()

    try {
        val cuttedString = CutString(userString, cutSize)
        println(cuttedString)
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}