
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    A.sort()
    let result1 = A[0] * A[1] * A[A.count - 1]
    let result2 = A[A.count - 3] * A[A.count - 2] * A[A.count - 1]
    
    return result1 > result2 ? result1 : result2
}
