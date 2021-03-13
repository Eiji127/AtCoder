import Foundation
 
func main() {
    let n = readLine()!
    var nums = "999"
    var num = ""
    var underNum = 0
    var nRest = n.count / 3
    var ans = 0
    if n.count % 3 == 0 {
        nRest -= 1
    }
    if nRest > 1 {
        for i in 1...nRest-1 {
            num += "999"
            nums += "999"
            underNum += (Int(nums)! - Int(num)!) * i
        }
        let m = Int(n)! - Int(nums)!
        print(underNum + (m * nRest))
    } else if nRest == 1 {
        let m = Int(n)! - Int(nums)!
        print(m * nRest)
    } else if nRest == 0 {
        print(0)
    }
}
 
main()
