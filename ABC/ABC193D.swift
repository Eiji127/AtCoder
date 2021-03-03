
import Foundation

struct Scanner {
    private var elements = [String]()
    private var index = 0
 
    mutating func peek() -> String {
        while elements.count == index {
            elements = readLine()!.split(separator: " ").map(String.init)
            index = 0
        }
        return elements[index]
    }
 
    mutating func next() -> String {
        defer { index += 1 }
        return peek()
    }
 
    mutating func nextInt() -> Int {
        return Int(next())!
    }
 
    mutating func nextInts(_ n: Int) -> [Int] {
        return (0 ..< n).map { _ in nextInt() }
    }
 
    mutating func nextDouble() -> Double {
        return Double(next())!
    }
}
 
extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element {
        reduce(.zero, +)
    }
}
 
infix operator **: BitwiseShiftPrecedence
 
func ** (lhs: Int, rhs: Int) -> Int {
    rhs == 0 ? 1 : lhs * lhs ** (rhs - 1)
}
 
var scanner = Scanner()
 
let K = scanner.nextInt()
let S = scanner.next().dropLast().map { $0.wholeNumberValue! }
let T = scanner.next().dropLast().map { $0.wholeNumberValue! }
 
var count = [Int](repeating: K, count: 10)
count[0] = 0
for s in S {
    count[s] -= 1
}
for t in T {
    count[t] -= 1
}
 
func score(_ s: [Int]) -> Int {
    var result = 0
    for i in 1 ... 9 {
        let k = s.filter { $0 == i }.count
        result += i * 10 ** k
    }
    return result
}
 
var answer: Double = 0
for i in 1 ... 9 {
    for j in 1 ... 9 {
        if score(S + [i]) > score(T + [j]) {
            if i == j {
                let p = Double(count[i]) / Double(count.sum()) * Double(count[i] - 1) / Double(count.sum() - 1)
                answer += p
            } else {
                let p = Double(count[i]) / Double(count.sum()) * Double(count[j]) / Double(count.sum() - 1)
                answer += p
            }
        }
    }
}

print(answer)
