// MARK: - B問題

import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

let n = readInt()
var res = -1
func main() {
    for i in 1...n {
      let arr = readLine()!.split(separator: " ").map { Int($0)!}
      if arr[2] > arr[0] {
        if res == -1 {
          res = arr[1] //初回の設定
        } else if res > arr[1] {
            res = arr[1] //次のお店が値段が安いとき、その値段に設定
        }
      }
    }
    print(res)
}

main()
