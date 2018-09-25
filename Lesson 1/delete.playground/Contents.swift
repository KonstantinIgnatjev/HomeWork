import UIKit


// Замыкание

// 12.1 Функции как замыкания


// Функция отбора купюр

func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot==100{
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}


// 12.2
// Функция отбора купюр от 1000 и более

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot>=1000{
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

// электронный кошелек
var wallet = [10, 50, 100, 100, 5000, 100, 50, 50, 500, 100]

handle100(wallet: wallet)
handleMore1000(wallet: wallet)

// 12. 3

// Единая функция формирования результатирующего массива

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
   var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}

// Функция сравнения с числом 100
func compare100(banknot: Int) -> Bool {
    return banknot==100
}
// Функция сравнения с числом 1000
func compareMore1000(banknot: Int) -> Bool {
    return banknot>=1000
}

handle(wallet: wallet, closure: compare100)



// ********* 12.2 Замыкающие выражения *********

/* Синтаксис
 
 { (входные_аргументы) -> Тип возращаемогоЗначения in
        тело_замыкающего_выражения
 }

*/

// 12. 4

// Отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in return banknot>=1000})
// Отбор купюр достоинством выше 100 рублей
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in return banknot==100})


// 12. 5
handle(wallet: wallet, closure: {banknot in return banknot>=1000})
handle(wallet: wallet, closure: {banknot in return banknot==100})


// ********* 12.3 Неявное возращение значения *********

// Отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: {banknot in banknot>=1000})
// Отбор купюр достоинством выше 100 рублей
handle(wallet: wallet, closure: {banknot in banknot==100})


// ********* 12. 4 Сокращенные имена параметров *********

// Отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: {$0>=1000})
handle(wallet: wallet, closure: {$0==100})


/* Здесь $0 — это входной аргумент banknot входного аргумента-замыкания
   closure в функции handle(wallet:closure:) */


// Отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet) {$0>=1000}
handle(wallet: wallet) {$0==100}

// 12. 9

let successbanknots = [100, 500]
handle(wallet: wallet){banknot in
    for number in successbanknots {
        if number == banknot {
            return true
        }
    }
    return false
}


// ********* 12. 5 Переменные-замыкания *********

let closure : () -> () = {
    print("Замыкающие выражение")
}
closure()


var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
    return $0 + $1
}
sum(10,10)


// ********* 12. 6 Метод сортировки массивов

var array = [1,44,81,4, 277,50,101,51,8]
array.sorted(by: { (first: Int, second: Int) -> Bool in
    return first < second
})

// 12.13

var sortedArray = array.sorted(by:{$0<$1})
sortedArray
