
import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func main() {
    var N = readInt()
    var A = readInts()
    
    var count = 0
    while A.allSatisfy({ $0.isMultiple(of: 2) }) {
        count += 1
        A = A.map { $0 / 2 }
    }
    
    print(count)
}

main()

