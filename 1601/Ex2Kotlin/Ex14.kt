//14. Парольная проверка
//Создайте функцию для проверки сложности пароля. Если пароль содержит менее 8 символов, выбрасывайте исключение WeakPasswordException.

package Ex2Kotlin

class WeakPasswordException(message: String) : Exception(message)

private fun isPasswordSecured(password: String): Boolean{

    if (password.length<8) throw WeakPasswordException("Пароль должен содержать не менее 8 символов")
    return true
}

fun main() {

    print("Введите пароль: ")
    val userPassword = readln()

    try {
        if (isPasswordSecured(userPassword)) println("Ваш пароль подходит")
    } catch (e: WeakPasswordException) {
        println("Ошибка: ${e.message}")
    }
}