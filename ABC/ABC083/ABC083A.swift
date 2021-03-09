
import Foundation

func readFourInts() -> (a: Int, b: Int, c: Int, d: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2], d: ints[3])
}

func main() {
    let (a, b, c, d) = readFourInts()
    if a+b > c+d {
        print("Left")
    } else if a+b < c+d {
        print("Right")
    } else if a+b == c+d {
        print("Balanced")
    }
}

main()
