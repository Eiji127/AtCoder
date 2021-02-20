import Foundation

func main() {
    let x = readInt()
    let y = x / 100
    let z = x % 100
    if z != 0 {
        let num = x - y*100
        let a = 100 - num
        print(a)
    } else {
        print(100)
    }
}
