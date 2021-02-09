import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func main() {
    let string = readLine()!

    let count = string.reduce(0) { (sum, part) in sum + Int(String(part))! }
    print(count)
}

main()


