
import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}
// Answer_1
func main() {
    let N = readInt()
    let d = (0..<N).map{ _ in readInt() }
    
    print(Set(d).count) //ダブリを確認
}

// Answer_2
func main2() {
    let N = readInt()
    
    var dictionary: [Int: String] = [:]
    (0..<N).forEach { _ in
        let number = readInt()
        dictionary[number] = "found!"
    }
    print(dictionary.count)
}

main()



