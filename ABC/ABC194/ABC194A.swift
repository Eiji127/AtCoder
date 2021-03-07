
import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

// MARK: - A問題
func main() {
    let (a, b) = readTwoInts()
    if (a+b>=15), b>=8 {
        print(1)
    }else if a+b>=10, b>=3 {
        print(2)
    }else if a+b>=3 {
        print(3)
    }else {
        print(4)
    }
}

main()
