
import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func main() {
    var N = readInt()
    var a = readInts()
    
    var alice = 0
    var bob = 0
    
    a.sorted(by: >).enumerated().forEach { (index, element) in
        if index.isMultiple(of: 2) {
            alice += element
        } else {
            bob += element
        }
    }
    print(alice - bob)
}

main()
