//18. Квадратный корень
//Реализуйте функцию, которая находит квадратный корень числа. Если число отрицательное, выбрасывайте исключение.

package Ex2Kotlin

private fun getRoot2(num: Double): Double{
    if (num<0) throw IllegalArgumentException("Число не может быть отрицательным")
    return Math.pow(num, 0.5)
}

fun main() {
    print("Введите число: ")
    val userNum: Double = readln().toDouble()
    try {
        val numRoot: Double = getRoot2(userNum)
        println("Корень: $numRoot")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}