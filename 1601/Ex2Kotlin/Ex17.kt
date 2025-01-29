//17. Остаток от деления
//Создайте функцию, которая возвращает остаток от деления двух чисел. Если второе число равно нулю, выбрасывайте исключение.

package Ex2Kotlin

private fun remainderOfDiv(dividend: Double, divider: Double): Double{
    if (divider==0.0) throw IllegalArgumentException("Делитель не может быть равен 0")
    return dividend%divider
}

fun main(){
    print("Введите первое число: ")
    val firstUserNumber: Double = readln().toDouble()
    print("Введите второе число: ")
    val secondUserNumber: Double = readln().toDouble()

    try{
        val divisionResult =  remainderOfDiv(firstUserNumber, secondUserNumber)
        println("Остаток от деления: $divisionResult")
    } catch (e: IllegalArgumentException){
        println("Ошибка: ${e.message}")
    }
}