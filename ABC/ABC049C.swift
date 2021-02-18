import Foundation


func main() {
    let words = ["dream", "dreamer", "erase", "eraser"]
    var S = readLine()!
    
    while let word = words.first(where: { S.hasSuffix($0) }) {
        S.removeLast(word.count)
    }
    
    print(S.isEmpty ? "YES" : "NO")
}

main()
