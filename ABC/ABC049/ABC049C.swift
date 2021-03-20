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

import Foundation
func main() {
    let w = ["dream","dreamer","erase","eraser"]
    var s = readLine()!.dropFirst(0)
    while true {
        if s.isEmpty {
            print("YES")
            return
        }
        for i in 0...3 {
            if s.hasSuffix(w[i]) {
                //s = s.dropLast(w[i].count)
                s.removeLast(w[i].count)
                break
            }
            if i==3 {
                print("NO")
                return
            }
        }
    }
}
main()


