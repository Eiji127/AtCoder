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
 
func extgcd(_ a: Int, _ b: Int) -> (Int, Int, Int) {
    var x1 = 1, y1 = 0, z1 = a
    var x2 = 0, y2 = 1, z2 = b
    while z2 != 0 {
        let q = z1 / z2
        (x1, x2) = (x2, x1 - x2 * q)
        (y1, y2) = (y2, y1 - y2 * q)
        (z1, z2) = (z2, z1 - z2 * q)
    }
    return (x1, y1, z1)
}
 
func modulo(_ a: Int, _ b: Int) -> Int {
    (a % b + b) % b
}
 
func solve(_ a: (Int, Int), _ b: (Int, Int)) -> (Int, Int)? {
    let (x, y, z) = extgcd(a.1, b.1)
    guard (a.0 - b.0).isMultiple(of: z) else {
        return nil
    }
    let m = a.1 * b.1 / z
    let s = b.1 / z
//  return (modulo(a.0 + (b.0 - a.0) / z % m * x % m * a.1, l), m)
    return (modulo(a.0 + (b.0 - a.0) / z % s * x % s * a.1, m), m)
}
 
var scanner = Scanner()
let T = scanner.nextInt()
for _ in 0 ..< T {
    let X = scanner.nextInt()
    let Y = scanner.nextInt()
    let P = scanner.nextInt()
    let Q = scanner.nextInt()
 
    var answer = Int.max
    for i in X ..< X + Y {
        for j in P ..< P + Q {
            if let (t, _) = solve((i, 2 * (X + Y)), (j, P + Q)) {
                answer = min(answer, t)
            }
        }
    }
    if answer == Int.max {
        print("infinity")
    } else {
        print(answer)
    }
}
