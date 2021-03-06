//: Playground - noun: a place where people can play

import UIKit

// Задание 1 стр. 62-63

// 1 . Объявите две пустые целочисленные переменные типов Int8 и Uint8.
 
let firstNumber: Int8
let secondNumber: UInt8

// 2 . В одну из них запишите максимальное значение, которое мо- жет принять параметр типа Uint8, в другую — минимальное значение, которое может принять параметр типа Int8 . Об- ратите внимание на то, какое значение в какую переменную может быть записано .

firstNumber = Int8.min
secondNumber = UInt8.max

// 3 . Выведите полученные значения на консоль .

print("Min UInt8: \(firstNumber), Max Int8: \(secondNumber)")

// 4 . Объявите две целочисленные однотипные переменные, при этом тип данных первой должен быть задан неявно, а вто- рой — явно . Обеим переменным должны быть присвоены значения .

var numberOne: Int = 10
var numberTwo = 5
var tmpNumber: Int

// 5 . Поменяйте значения переменных местами .Для этого вам придется использовать еще одну переменную, которая будет служить буфером .

tmpNumber = numberOne
numberOne = numberTwo
numberTwo = tmpNumber

// 6 . Выведите получившиеся значения на консоль . При этом в каждом варианте выводимых данных текстом напишите, какую переменную вы выводите .

print("numberOne: \(numberOne), numberTwo: \(numberTwo)")


