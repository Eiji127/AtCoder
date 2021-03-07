//
//  main.swift
//  ABC143_B
//
//  Created by 白数叡司 on 2021/02/09.
//

import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

var N = readInt()
var d = readInts()
var sum = 0
for i in 0..<N {
    for j in i+1..<N {
       sum += d[i]*d[j]
    }
}
print(sum)


