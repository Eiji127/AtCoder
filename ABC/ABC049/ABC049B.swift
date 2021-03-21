
func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

func main() {
    let (h, w) = readTwoInts()
    var pixels = [String]()
    for i in 0..<h {
        let pixel = readLine()!
        pixels.append(pixel)
    }
    for j in 0..<h {
        print(pixels[j])
        print(pixels[j])
    }
}
 
main()

let _=readLine()!
for _ in 0...99{
  if let s=readLine(){
    print(s+"\n"+s)
  }else{
    break
  }
}
