// https://atcoder.jp/contests/abs/tasks/abc085_c

//一般に1sに計算できる量は10^8回ぐらい

import Foundation

//func readInt() -> Int {
//    return Int(readLine()!)!
//}
//
//func readInts() -> [Int] {
//    return readLine()!.split(separator: " ").map { Int($0)! }
//}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

func main() {
    let (N, Y) = readTwoInts()
    
    for i in 0...N {
        for j in 0...(N - i) {
            let k = N - i - j
            if Y == (i * 10000) + (j * 5000) + (k * 1000) {
                print(i, j, k)
                return
            }
        }
    }
    
    print(-1, -1, -1)
}


main()
