//4. Проверка возраста
//Создайте функцию, которая принимает возраст и выбрасывает IllegalArgumentException, если возраст меньше нуля или больше 150.

package Ex2Kotlin

private fun checkAge(age: Int){
    if (age < 0 || age > 150) throw IllegalArgumentException("Возраст не может быть меньше нуля или больше 150-ти")
    println(0)
}

fun main() {
        print("Введите возраст: ")
        val userAge: Int = readln().toInt()
    try {
        checkAge(userAge)
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}