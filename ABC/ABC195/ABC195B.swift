
import Foundation

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

func main() {
    var (a, b, w) = readThreeInts()
    w *= 1000
    let ans1 = Int(ceil(Double(w) / Double(b)))
    let ans2 = Int(floor(Double(w) / Double(a)))
    if ans1 > ans2 {
        print("UNSATISFIABLE")
    } else {
        print(ans1, ans2)
    }
}

main()
