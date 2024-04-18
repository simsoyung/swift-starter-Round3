//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class Person{
    let name: String
    var money: Int
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
    func buyCoffee(payCoffee: Int){
        print("\(payCoffee)원 커피를 구매하였습니다.")
    }
}

class CoffeeShop{
    var sales: Int
    var menu: [String : Int]
    var pickUpTable : [String]
    
    init(sales: Int, menu: [String : Int], pickUpTable: [String]) {
        self.sales = sales
        self.menu = menu
        self.pickUpTable = pickUpTable
    }
    
//pickUpTable은 Coffee를 담을 수 있는 배열입니다
// 이부분 잘이해가 안가요ㅠㅠ
//    주문을 받고, 커피를 만들어낼 수 있는 동작을 가질 수 있도록 해봅시다.
//    커피를 만들면 pickUpTable 에 할당할 수 있도록 해봅시다.
    func cafe(coffeelist: Coffee, makeCoffee: Int) {
        pickUpTable = ["\(coffeelist)를 \(makeCoffee)잔 만들었습니다."]
    }
}

enum Coffee: String {
    case espresso = "에스프레소"
    case americano = "아메리카노"
    case latte = "라떼"
}

var misterLee = Person(name: "misterLee", money: 0)
var misterKim = Person(name: "misterKim", money: 0)

var yagombucks = CoffeeShop(sales: 5, menu: ["라뗴": 5000], pickUpTable: [""])

//yagombucks 의 바리스타(barista)를 misterLee 로 할당해봅시다

