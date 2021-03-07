// MARK: - C問題

import Foundation


func readInt() -> Int {
    return Int(readLine()!)!
}

// Answer_1
func main1() {
    let N = readInt()
    if (N == 1) {
        print(1)
        return //ここで終わり
    }
    var checked: [Bool] = Array(repeating: false, count: 120000) //　→ [false, false, ...., false]
    var count = 0
    for p in 2..<N {
        if (p * p) > N {
            break //ここでfor文の繰り返しは終了
        }
        if checked[p] {
            continue //pにおける操作は終了するが,その後のfor文の繰り返し操作は実行される
        }
        checked[p] = true
        var q = p * p
        while q <= N {
            if q < 120000 {
                checked[q] = true //ex.16は2^4と4^2の2パターンで表されるが片方だけ満たしている時点で16はクリア
            }
            count += 1
            q *= p
        }
    }
    print(N - count)
}

// Answer_2
func main2() {
    let n = readInt()
    let aMax = Int(sqrt(Double(n)))

    var set = Set<Int>()
    for a in (2...max(2,aMax)) {
        var x = a * a
        while x <= n {
            set.insert(x)
            x *= a
        }
    }

    print(n - set.count)
}

main2()
