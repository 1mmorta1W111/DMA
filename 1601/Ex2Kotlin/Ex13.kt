//13. Чтение элемента списка
//Напишите функцию, которая возвращает элемент списка по индексу. Если индекс выходит за пределы списка, выбрасывайте IndexOutOfBoundsException.

package Ex2Kotlin

private fun getElementByIndex(array: Array<Int>, index: Int): Int{

    if (index >= array.size-1 || index<0) throw IndexOutOfBoundsException("Элемента с таким индексом не существует (Out of Bounds)")

    val element = array[index]

    return element
}

fun main() {

    val array = arrayOf(0, 1, 2, 3, 4, 5)

    print("Введите индекс: ")
    val userNum = readln().toInt()

    try {
        val element = getElementByIndex(array, userNum)
        println("Элемент под индексом $userNum: $element")
    } catch (e: IndexOutOfBoundsException) {
        println("Ошибка: ${e.message}")
    }
}