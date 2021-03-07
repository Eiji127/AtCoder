// MARK: - C問題

// Answer_1
func readInt1(line: Int = #line, file: String = #file) -> Int {
    guard let string = readLine() else {
        preconditionFailure("No input (at line \(line) in \(file))")
    }
    guard let value = Int(string) else {
        preconditionFailure("Illegal input value: \(string) (at line \(line) in \(file))")
    }
    return value
}
 
func readIntN(line: Int = #line, file: String = #file) -> [Int] {
    guard let string = readLine() else {
        preconditionFailure("No input (at line \(line) in \(file))")
    }
    let values: [Int] = string.split(separator: " ").map { part in
        guard let value = Int(part) else {
            preconditionFailure("Illegal input value: \(string) (at line \(line) in \(file))")
        }
        return value
    }
    return values
}
 
let n = readInt1()
let aa = readIntN()
 
let aSum = aa.reduce(0, +)
 
var sum = 0
for a in aa {
    sum += (n - 1) * a * a
    sum -= (aSum - a) * a
    print(sum)
}
print(sum)
