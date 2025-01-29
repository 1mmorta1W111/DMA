//16. Конкатенация строк
//Реализуйте функцию, которая объединяет две строки. Если одна из строк равна null, выбрасывайте NullPointerException.

package Ex2Kotlin

fun mergeStrings(firstString: String?, secondString: String?): String{

    if (firstString == null || secondString == null) throw NullPointerException("Строка не может быть равна null")

    return firstString+secondString
}

fun main() {
    print("Введите первую строку (Ctrl + D чтобы ввести null): ")
    val firstString: String? = readlnOrNull()

    print("Введите вторую строку: ")
    val secondString: String? = readlnOrNull()

    try {
        val mergedString = mergeStrings(firstString, secondString)
        println("Объединённая строка: $mergedString")
    } catch (e: NullPointerException) {
        println("Ошибка: ${e.message}")
    }
}