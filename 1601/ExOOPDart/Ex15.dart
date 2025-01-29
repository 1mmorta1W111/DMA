// 15. Комплексные числа
// Создайте класс ComplexNumber с полями для действительной и мнимой частей.
// Реализуйте методы для сложения, вычитания, умножения и деления комплексных чисел.

class ComplexNumber {
  double real, imaginary;

  ComplexNumber(this.real, this.imaginary);

  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(real + other.real, imaginary + other.imaginary);
  }

  ComplexNumber operator -(ComplexNumber other) {
    return ComplexNumber(real - other.real, imaginary - other.imaginary);
  }

  ComplexNumber operator *(ComplexNumber other) {
    double realPart = real * other.real - imaginary * other.imaginary;
    double imaginaryPart = real * other.imaginary + imaginary * other.real;
    return ComplexNumber(realPart, imaginaryPart);
  }

  ComplexNumber operator /(ComplexNumber other) {
    double denominator = other.real * other.real + other.imaginary * other.imaginary;
    double realPart = (real * other.real + imaginary * other.imaginary) / denominator;
    double imaginaryPart = (imaginary * other.real - real * other.imaginary) / denominator;
    return ComplexNumber(realPart, imaginaryPart);
  }

  @override
  String toString() {
    return "$real + ${imaginary}i";
  }
}