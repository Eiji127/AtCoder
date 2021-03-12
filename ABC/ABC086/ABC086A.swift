
import Foundation

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

// MARK: - A問題

func main() {
    let (a, b) = readTwoInts()
    let ab = a * b
    if ab % 2 == 0 {
        print("Even")
    } else {
        print("Odd")
    }
}

main()

