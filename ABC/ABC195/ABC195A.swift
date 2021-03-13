import Foundation
 
func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}
 
func main() {
    let (m, h) = readTwoInts()
    if h % m == 0 {
        print("Yes")
    } else {
        print("No")
    }
}
 
main()
