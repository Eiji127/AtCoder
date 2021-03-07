
import Foundation


func readInt() -> Int {
    return Int(readLine()!)!
}

typealias Plan = (t: Int, x: Int, y: Int)
func main10() {
    let N = readInt()
    let plans: [Plan] = (0..<N).map { _ in readThreeInts() }

    var previous = Plan(t: 0, x: 0, y: 0)

    for plan in plans {
        let time = plan.t - previous.t
        let distance = abs(previous.x - plan.x) + abs(previous.y - plan.y)

    
        let remain = time - distance

        if remain < 0 || !remain.isMultiple(of: 2) {
            print("No")
            return
        }

        previous = plan
    }

    print("Yes")
}
main10()
