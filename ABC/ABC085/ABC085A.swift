
import Foundation

func splitDate(date: String) -> (year: Int, month: Int, day: Int) {
    let date = date.split(separator: "/").map { Int($0)! }
    return (year: date[0], month: date[1], day: date[2])
}

// MARK: - A問題

func main() {
    let date = readLine()!
    var (y, m, d) = splitDate(date: date)
    let yNew = "2018"
    let mNew = String(format: "%02d", m)
    let dNew = String(format: "%02d", d)
    print(yNew + "/" + mNew + "/" + dNew)
}

main(()

