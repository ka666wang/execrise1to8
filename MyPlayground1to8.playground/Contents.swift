//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//計算全部格子的總和

var sum=0
for x in 0...7 {
    for y in 0...7 {
        sum=sum+x*y
    }
}
sum

//奇數行的數字總和
var sum1=0
for x in 0...7 {
    for y in 0...7 where y%2==1 {
        sum1=sum1+x*y
    }
}
sum1

//所有格子的總和，除了列數>=行數的格子
var sum2=0
for x in 0...7 {
    
    for y in 0...7{
        
        if x<y{
            sum2=sum2+x*y
        }
    }
}

sum2


//定義func 接受三個參數 起始值 最大值 數字倍數值 回傳運算結果

func addToNumber(number:Int)->Int{
    var sum = 0
    for i in 1...number {
        sum = sum + i
    }
    return sum
}

addToNumber(100)


func addToNumber1(startNumber:Int,endNumber:Int,interval:Int)->Int{
    var sum = 0
    
    for i in startNumber...endNumber where i % interval == 0 {
        
        sum = sum + i
    }
    return sum
}

addToNumber1(3, endNumber: 98, interval: 5)


func addToNumber2(startNumber:Int,endNumber:Int,interval:Int)->Int{
    
    var sum = 0
    var tempNum = 0
    
    
    for i in startNumber...endNumber {
        if i % interval == 0 {
            
            tempNum = i
            //var message = tempNum
            //print ("\(tempNum)")
            
            break
        }
        
        
        while tempNum <= endNumber {
            sum = sum + tempNum
            tempNum = tempNum + interval
            //print ("\(tempNum)")
            //print ("\(sum)")
        }
        
    }
    return sum
}

addToNumber2(1, endNumber: 10, interval: 2)





//func接受三個值 起迄區間 及 不包含某倍數的數值

func addToNumber3 (startNumber:Int,endNumber:Int,interval:Int)->Int{
    var sum = 0
    for i in startNumber...endNumber where i % interval != 0 {
        
        sum = sum + i
    }
    
    return sum
}

addToNumber3(3, endNumber: 11, interval: 5)




//奇數行的數字總和 接受兩參數

func addToNumber4 (rowNum:Int,columnNum:Int)->Int{
    
    var sum=0
    
    for x in 0...rowNum where x % 2 == 1{
        for y in 0...columnNum  {
            
            sum = sum + x * y
            //print ("\(sum)")
        }
    }
    return sum
}

addToNumber4(7, columnNum: 7)



//所有格子的總和 除了列數>=行數的格子 接受兩參數
func addToNumber5 (rowNum:Int,columnNum:Int)->Int{
    
    var sum = 0
    
    for x in 0...rowNum {
        for y in 0...columnNum {
            if x < y {
                sum = sum + x * y
            }
        }
    }
    return sum
}

addToNumber5(7, columnNum: 7)



//溫度轉換
func temperatureExchange1(fahrenheit:Double) -> Double {
    var centigrade:Double = 0
    
    centigrade = fahrenheit * ( 9 / 5 ) + 32
    
    return centigrade
    
}

temperatureExchange1(30)


func temperatureExchange2(centigarde:Double) -> Double {
    var fahrenheit:Double = 0
    
    fahrenheit = ( centigarde - 32 ) * 5 / 9
    
    return fahrenheit
    
}

temperatureExchange2(86)