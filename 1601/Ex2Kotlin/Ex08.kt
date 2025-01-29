//8. Калькулятор возведения в степень
//Реализуйте функцию, которая возводит число в степень. Если степень отрицательная, выбрасывайте исключение.

package Ex2Kotlin

private fun Pow(number: Double, pow: Double): Double{

    if (pow<0) throw IllegalArgumentException("Степень меньше 0")

    return Math.pow(number, pow)
}

fun main() {

    print("Введите число: ")
    val userNum: Double = readln().toDouble()
    print("Введите степень: ")
    val pow: Double = readln().toDouble()

    try {
        val poweredNumber = Pow(userNum, pow)
        println("$userNum в степени $pow = $poweredNumber")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}