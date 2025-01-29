//5. Нахождение корня
//Реализуйте функцию, которая находит корень из числа. Если число отрицательное, выбрасывайте IllegalArgumentException.

package Ex2Kotlin

private fun getRoot(num: Double): Double{
    if (num<0) throw IllegalArgumentException("Число не может быть отрицательным")
    return Math.pow(num, 0.5)
}

fun main() {
        print("Введите число: ")
        val userNum: Double = readln().toDouble()
    try {
        val numRoot: Double = getRoot(userNum)
        println("Корень: $numRoot")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}