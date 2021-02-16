
import Foundation


// Answer: 1
func readDate() -> (year: Int, month: Int, day: Int) {
    let date = readLine()!.split(separator: "/").map { Int($0)! }
    return (year: date[0], month: date[1], day: date[2])
}

func main() {
    let shortDay = [2,4,6,9,11]
    var (year, month, day) = readDate()
    var lastDay = false

    while year%(month*day) != 0 {
        // 最終日の判断
        if shortDay.contains(month) {
            if month==2 {
                if year%400==0 {
                    if day==29 {lastDay=true}
                } else if year%100==0 {
                    if day==28 {lastDay=true}
                } else if year%4==0 {
                    if day==29 {lastDay=true}
                } else {
                    if day==28 {lastDay=true}
                }
            } else if day==30 {lastDay=true}
        } else {
            if day==31 {lastDay=true}
        }
        //最終日であるとき次の月、年に移行する
        if lastDay {
            day=1
            if month==12 {
                month=1
                year+=1
            } else {month+=1}
            lastDay=false
        } else {day+=1}
    }
    var y = String(year),m = String(format: "%02d",month), d = String(format: "%02d",day)
    print(y+"/"+m+"/"+d)
}

// Answer: 2
prefix operator «
prefix func « <T> (a: [T]) -> (T, T, T) { (a[0], a[1], a[2]) }
 
func main2() {
    let YMD = readLine()!
    let format = DateFormatter()
    format.dateFormat = "yyyy/MM/dd"
    
    var dt = format.date(from: YMD)!
    for _ in 0...Int.max {
        let (yyyy, mm, dd) = «format.string(from: dt).split(separator: "/").map { Int($0)! }
        
        if yyyy.isMultiple(of: mm * dd) { break }
        
        dt = Date(timeInterval: 60 * 60 * 24, since: dt)
    }
    
    print(format.string(from: dt))
}

//＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

main()
