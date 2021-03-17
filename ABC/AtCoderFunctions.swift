func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

func readFourInts() -> (a: Int, b: Int, c: Int, d: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2], d: ints[3])
}

func readIntsArray() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func readTwoIntsD() -> (a: Double, b: Double) {
    let ints = readLine()!.split(separator: " ").map { Double($0)! }
    return (a: ints[0], b: ints[1])
}

func splitDate(date: String) -> (year: Int, month: Int, day: Int) {
    let date = date.split(separator: "/").map { Int($0)! }
    return (year: date[0], month: date[1], day: date[2])
}
