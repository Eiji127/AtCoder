
import Foundation


func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

func main() {
    var (x, y) = readTwoInts()
    var count = 1
    for i in 0...y {
        x *= 2
        if x <= y {
            count += 1
        } else if x > y {
            print(count)
            break
        }
    }
}

main()
