
import Foundation


func readInt() -> Int {
    return Int(readLine()!)!
}

func main() {
    var A = readInt()
    var B = readInt()
    var C = readInt()
    var X = readInt()
    
    var count = 0
    for i in 0...A {
        for j in 0...B {
            for k in 0...C {
                if X == (500*i) + (100*j) + (50*k) {
                    count += 1
                }
            }
        }
    }
    print(count)
}

main()
