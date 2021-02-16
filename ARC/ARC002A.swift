
// https://atcoder.jp/contests/arc002/tasks/arc002_1

import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}


// Answer1
func main() {
    let year = readInt()
    var judgement = false
    if year%4 == 0, year%100 != 0 || year%400 == 0{
        judgement = true
    }
    if judgement {
        print("YES")
    } else {
       print("NO")
    }
}

// Answer2
func main2() {
    let n = Int(readLine()!)!
    print((n%400==0 || (n%100 != 0 && n%4==0)) ? "YES":"NO")
}

main()
