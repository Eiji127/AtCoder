
import Foundation

func readTwoDoubles() -> (a: Double, b: Double) {
    let ints = readLine()!.split(separator: " ").map { Double($0)! }
    return (a: ints[0], b: ints[1])
}

func main() {
    let (a, b) = readTwoDoubles()
    let d = (a - b) * 100 / a
    print(d)
}

main()
