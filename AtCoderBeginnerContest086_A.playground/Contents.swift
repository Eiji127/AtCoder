
//var a = Int(readLine()!)!
//var b = Int()
//let multipleInt = a * b
//
//let answer = multipleInt % 2 == 0 ? "Even" : "Odd"

import Foundation

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map{ Int($0)! }
    return (a: ints[0], b: ints[1])
}

func main1() {
    let (a, b) = readTwoInts()
    let result = a * b
    print(result.isMultiple(of: 2) ? "Even" : "Odd")
}

main1()
