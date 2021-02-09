import Foundation

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

func main() {
    let (N, A, B) = readThreeInts()
    var sum = 0
    for i in 1...N {
        let result = String(i).reduce(0) { (sum, part) in sum + Int(String(part))! }
        if A <= result, result <= B {
            sum += i
        }
    }
    print(sum)
}

main()
