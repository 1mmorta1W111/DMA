//2. Калькулятор деления
//Создайте функцию для деления двух чисел. Если делитель равен нулю, выбрасывайте ArithmeticException с сообщением о недопустимости деления на ноль.

package Ex2Kotlin

private fun div(dividend: Double, divider: Double): Double{
    if (divider==0.0) throw IllegalArgumentException("Делитель не может быть равен 0")
    return dividend/divider
}

fun main(){
    print("Введите первое число: ")
    val firstUserNumber: Double = readln().toDouble()
    print("Введите второе число: ")
    val secondUserNumber: Double = readln().toDouble()

    try{
        val divisionResult =  div(firstUserNumber, secondUserNumber)
        println(divisionResult)
    } catch (e: IllegalArgumentException){
        println("Ошибка: ${e.message}")
    }

}