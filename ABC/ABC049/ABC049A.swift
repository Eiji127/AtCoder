func main() {
    let string = readLine()!
    let vowels = ["a", "i", "u", "e", "o",]
    if vowels.contains(string) {
        print("vowel")
    } else {
        print("consonant")
    }
}

main()

// Answer.2

print((["a","i","u","e","o"].contains(readLine()!)) ? "vowel":"consonant")


