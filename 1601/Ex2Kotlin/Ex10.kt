//10. Поиск элемента в массиве
//Напишите функцию, которая ищет элемент в массиве. Если элемент не найден, выбрасывайте исключение с сообщением об ошибке.

package Ex2Kotlin

private fun getELementIndex(array: Array<Int>, element: Int): Int{

    val index = array.indexOf(element)

    if (index == -1) throw IllegalArgumentException("Элемент не найден")

    return index
}

fun main() {

    val array  = arrayOf(0, 1, 3, 4, 5)

    print("Введите искомый элемент (число): ")
    val userNum = readln().toInt()

    try {
        val index = getELementIndex(array, userNum)
        println("Индекс элемента: $index")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}