import Foundation

func readNandK() -> (a: String, b: String) {
    let ints = readLine()!.split(separator: " ").map { String($0) }
    return (a: ints[0], b: ints[1])
}

func main() {
    let (N, K) = readNandK()
    var a = N
    for j in 0..<Int(K)! {
        var g1s: [String] = []
        var g2s: [String] = []
        for i in a {
            g1s.append(String(i))
            g2s.append(String(i))
        }
        var g11 = g1s.map { Int($0)! }
        g11.sort { $0 > $1 }
        var g111 = g11.map { String($0) }
        var g1 = g111.joined()
        var g22 = g2s.map { Int($0)! }
        g22.sort { $0 < $1 }
        var g222 = g22.map { String($0) }
        var g2 = g222.joined()
        a = String(Int(g1)! - Int(g2)!)
    }
    print(Int(a)!)
}

main()
