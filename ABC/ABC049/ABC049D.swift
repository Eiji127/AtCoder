func readInts() -> [Int]{
    return readLine()!.split(separator: " ").map { Int($0)! }
}
 
struct UnionFind{
    var parent: Array<Int> = []
    init(_ size: Int){
        parent = Array(repeating: -1, count: size)
    }
    func root(of: Int) -> Int{
        if(parent[of] < 0){
            return of
        }else{
            return root(of: parent[of])
        }
    }
    func size(of: Int) -> Int{
        return -parent[root(of: of)]
    }
    func same(_ x: Int, _ y: Int) -> Bool{
        return root(of: x) == root(of: y)
    }
    mutating func unite(_ x: Int, _ y: Int) -> Bool{
        if(same(x, y)){
            return false
        }
        let rootOfX = root(of: x), rootOfY = root(of: y)
        if(size(of: x) < size(of: y)){
            parent[rootOfY] += parent[rootOfX]
            parent[rootOfX] = rootOfY
        }else{
            parent[rootOfX] += parent[rootOfY]
            parent[rootOfY] = rootOfX
        }
        return true
    }
}
 
func main(){
    var ls = readInts()
    let (N, K, L) = (ls[0], ls[1], ls[2])
    var ufRoad = UnionFind(N)
    var ufTrain = UnionFind(N)
    for _ in 0..<K{
        ls = readInts()
        ufRoad.unite(ls[0]-1, ls[1]-1)
    }
    for _ in 0..<L{
        ls = readInts()
        ufTrain.unite(ls[0]-1, ls[1]-1)
    }
    var dict: [Int: Int] = [:]
    var pair: [Int] = []
    for i in 0..<N{
        let newPair = (ufRoad.root(of: i)+1)*N + ufTrain.root(of: i)
        pair.append(newPair)
        if let _ = dict[newPair]{
            dict[newPair]! += 1
        }else{
            dict[newPair] = 1
        }
    }
    for i in 0..<N{
        print(dict[pair[i]]!, terminator: " ")
    }
    print("\n")
}
 
main()
