//: Playground - noun: a place where people can play

import UIKit


/* Задание стр. 127
 
 1. Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation. Первые два — это числа с плавающей точкой. Они будут содержать операнды для выполняемой операции.
     Третий элемент — строковое значение типа Character . Оно бу- дет содержать указатель на проводимую операцию .
     Всего может быть четыре вида операций: +, -, *, / .
 2. Создайте константу типа Operation и заполните значения ее элементов произвольным образом, например (3.1, 33, "+") .
 3. Используя конструкцию switch-case, вычислите значение операции, указанной в элементе operation созданного кор- тежа для операндов в его первых двух элементах . Оператор switch должен корректно обрабатывать любую из перечис- ленных операций .
 4. В созданной константе замените символ операции другим произвольным символом и проверьте правильность работы конструкции switch-case. */


typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
let sumCount: Operation = (3.1, 33, "+")

switch sumCount {
case (let one, let two, "+"):
    print(one + two)
case (let one, let two, "-"):
    print(one - two)
case (let one, let two, "*"):
    print(one * two)
case (let one, let two, "/"):
    print(one / two)
default:
    print("Значение с неизвестными параметрами")
}
