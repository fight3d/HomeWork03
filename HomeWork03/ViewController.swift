//
//  ViewController.swift
//  HomeWork03
//
//  Created by 3droot on 08.10.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("Assignment #2. Block 1")
        print("---------------------------------------------------")

        print("Задача 0. Вывести на экран наибольшее из двух чисел")
        compare(number1: 3, number2: 6)
        compare(number1: 39, number2: -3)
        compare(number1: 4.5, number2: 4.5)
        print("---------------------------------------------------")


        print("Задача 1. Вывести на экран квадрат и куб числа")
        square(number: 3)
        cube(number: 4)
        print("---------------------------------------------------")


        print("Задача 2. Вывести на экран все числа до заданного и в обратном порядке до 0")
        numbersFromZero(number: 5)
        print("---------------------------------------------------")


        print("Задача 3. Подсчитать общее количество делителей числа и вывести их")
        findDividers(number: 6)
        print("---------------------------------------------------")


        print("Задача 4. Проверить, является ли заданное число совершенным и найти их (делители)")
        isPerfectNumber(number: 8128)
        isPerfectNumber(number: 7)
        print("---------------------------------------------------")


        print("Assignment #2. Block 2")
        print("---------------------------------------------------")

        print("Задача 1. Остров Манхэттен был приобретен поселенцами за $24 в 1826 г. Каково было бы в настоящее время состояние их счета, если бы эти 24 доллара были помещены тогда в банк под 6% годового дохода?")
        task1Block2(price: 24, year: 1826, interest: 6)
        print("---------------------------------------------------")

        print("Задача 2. Ежемесячная стипендия студента составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, какую нужно иметь сумму денег, чтобы прожить учебный год (10 месяцев), используя только эти деньги и стипендию.")
        task2Block2(scholarship: 700, costs: 1000, inflation: 3, months: 10)
        print("---------------------------------------------------")
        
        print("Задача 3. У студента имеются накопления 2400 грн. Ежемесячная стипендия составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, сколько месяцев сможет прожить студент, используя только накопления и стипендию.")
        task3Block2(savings: 2400, scholarship: 700, costs: 1000, inflation: 3)
        print("---------------------------------------------------")
        
        print("// Задача 4. 2хзначную цело численную переменную типа 25, 41, 12. После выполнения вашей программы у вас в другой переменной должно лежать это же число только задом на перед 52, 14, 21")
        task4Block2(number: 25)
        task4Block2(number:2456)
        task4Block2(number: 123)
        print("---------------------------------------------------")
    }
//MARK:-> Assignment #2. Block 1
    
// Задача 0. Вывести на экран наибольшее из двух чисел
    func compare(number1: Double, number2: Double ){
        switch number1 {
        case _ where number1 < number2:
            print("\(number1) < \(number2)")
        case _ where number1 > number2:
            print("\(number1) > \(number2)")
        default:
            print("Numbers \(number1) and \(number2) are equal")
        }
    }
    
// Задача 1. Вывести на экран квадрат и куб числа
    func square(number: Double){
        let square = number * number
        print("Square of \(number) = \(square)")
    }
    func cube(number: Double){
        let cube = number * number * number
        print("Cube of \(number) = \(cube)")
    }

// Задача 2. Вывести на экран все числа до заданного и в обратном порядке до 0
    func numbersFromZero(number: Int){
        print("Возрастание:  Спадание:")
        for i in 0..<number{
            print("\(i)             \(number - i - 1)")
        }
    }

// Задача 3. Подсчитать общее количество делителей числа и вывести их
    func findDividers(number: Int){
        var counter = 0
  //      var value = 1
        for i in 1 ... number {
            if number % i == 0 {
                counter += 1
                print ("Dividor \(i)")
            }
        }
        print("\(number) has \(counter) dividers")
        }
    
//  Задача 4. Проверить, является ли заданное число совершенным и найти их (делители)
        func isPerfectNumber(number: Int){
            var sum = 0
            print("Checking number \(number):")
            for i in 1..<number {
                if number % i == 0 {
                    sum += i
                    print ("Dividor \(i)")
                }
            }
            if sum == number {
                print("Number \(number) is perfect number")
            } else {
                print("Number \(number) is not perfect number")
            }
        }
    
 //MARK:-> Assignment #2. Block 2
    
    // Задача 1. Остров Манхэттен был приобретен поселенцами за $24 в 1826 г. Каково было бы в настоящее время состояние их счета, если бы эти 24 доллара были помещены тогда в банк под 6% годового дохода?
    func task1Block2(price: Double, year: Int,  interest: Double){
        let currentYear = Calendar.current.component(.year, from: Date())
        let difference = currentYear - year
        var amount = 0.0
        if difference > 0 {
         amount = price + price * interest/100
        } else {
            print ("They didn't earn any money")
            return
        }
        if difference > 1 {
            for _ in 1 ..< difference {
                amount += amount * interest/100
            }
        }
        print("\(difference) years have passed")
        print ("Current state is \(amount.rounded(digits: 2)) $ ")
       
    }
    
    // Задача 2. Ежемесячная стипендия студента составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, какую нужно иметь сумму денег, чтобы прожить учебный год (10 месяцев), используя только эти деньги и стипендию.
    func task2Block2(scholarship: Double, costs: Double, inflation: Double, months: Int ){
        var totalCosts = costs
        var newCosts = costs
        for _ in 1 ..< months {
           newCosts += newCosts * inflation / 100
           totalCosts += newCosts
        }
        let amount = totalCosts - scholarship * Double(months)
        print ("You need \(amount.rounded(digits: 2)) hryvnia")
    }
    
    // Задача 3. У студента имеются накопления 2400 грн. Ежемесячная стипендия составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, сколько месяцев сможет прожить студент, используя только накопления и стипендию.
    func task3Block2(savings: Double, scholarship: Double, costs: Double, inflation: Double){
        var months = 0
        var newCosts = 0.0
        var leftAmount = savings
        while leftAmount > 0 {
            if months != 0 {
                newCosts += newCosts * inflation / 100
            } else {
                newCosts = costs
            }
            leftAmount -= (newCosts - scholarship)
            if leftAmount > 0 {
                months += 1
            }
        }
        
        if months > 0 {
            print("Student can live during \(months) months")
        } else {
            print ("Student doesn't have enough money even for 1 month" )
        }
        
    }
    
    
    // Задача 4. 2хзначную цело численную переменную типа 25, 41, 12. После выполнения вашей программы у вас в другой переменной должно лежать это же число только задом на перед 52, 14, 21
    func task4Block2 (number: Int){
        let stringNumber = String(number)
        let reverseStringNumber = String(stringNumber.reversed())
        let reverseNumber = Int(reverseStringNumber) ?? 0
        print(number, reverseNumber)
    }


    
    
    
}
//round Double with given accuracy
extension Double {
    func rounded(digits: Int) -> Double {
        let multiplier = pow(10.0, Double(digits))
        return (self * multiplier).rounded() / multiplier
    }
}


