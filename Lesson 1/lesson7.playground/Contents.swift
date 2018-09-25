//: Playground - noun: a place where people can play

import UIKit

// Единая функция формирования результирующего массива

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    
    return returnWallet
}


func compare100(banknot: Int) -> Bool {
    return banknot == 100
}


func compare1000(banknot: Int) -> Bool {
    return banknot >= 1000
}

var wallet = [10, 20, 50, 100, 200, 50, 20, 500, 100, 1000]

handle(wallet: wallet, closure: compare100)
handle(wallet: wallet, closure: compare1000)


// Замыкающие выражения

// Отбор купюр достоинством выше 1000
print(handle(wallet: wallet){$0>=1000})

// Отбор купюр достоинством 100
print(handle(wallet: wallet){$0==100})


let successbanknot = [100, 500]
print(handle(wallet: wallet) {banknot in
    for number in successbanknot {
        if number == banknot {
            return true
        }
    }
    
    return false
})

