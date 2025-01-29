//7. Проверка массива на нули
//Создайте функцию, которая проверяет массив на наличие нулей. Если в массиве есть нули, выбрасывайте исключение.

package Ex2Kotlin

private fun hasZero(array: Array<Int>): Boolean{

    for(i in array) if (i==0) throw IllegalArgumentException("Массив содержит нули")

    return false
}

fun main() {
    val array  = arrayOf(0, 1, 3, 4, 5)

    try {
        val hasZero = hasZero(array)
        println("Содержит нули: $hasZero")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}