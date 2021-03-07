import Foundation
 
func readInt() -> Int {
    return Int(readLine()!)!
}
 
func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}
 
func main() {
    let N = readInt()
    var worktime = [[Int]]()
    var aTime = [Int]()
    var bTime = [Int]()
    var ans = Int.max
    for i in 0..<N {
        var (a, b) = readTwoInts()
        aTime.append(a)
        bTime.append(b)
    }
    
    for i in 0..<N {
        for j in 0..<N {
            let time: Int
            if i == j {
                time = aTime[i]+bTime[j]
            } else {
                time = max(aTime[i], bTime[j])
            }
            
            ans = min(time, ans)
        }
    }
    print(ans)
}
 
main()
