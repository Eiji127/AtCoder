import Foundation

func isUpper(string: String) -> Bool {
    return string.range(of: "[A-Z]", options: .regularExpression) != nil
}

func isLower(string: String) -> Bool {
    return string.range(of: "[a-z]", options: .regularExpression) != nil
}

func main() {
    let S = readLine()!
    var checker = true
    var strings: [String] = []
    for i in S {
        strings.append(String(i))
    }
    for (key, value) in strings.enumerated() {
        if key%2 == 0 {
            if !isLower(string: value) {
               checker = false
            }
        }else {
            if !isUpper(string: value) {
                checker = false
            }
        }
    }
    if checker {
        print("Yes")
    } else {
        print("No")
    }
}
