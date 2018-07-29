
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    guard A.count > 2 else { return 0 }
    A.sort()
    for i in 0..<A.count - 2 {
        if A[i] < A[i + 1] + A[i + 2] && A[i] > A[i + 2] - A[i + 1] {
            return 1
        }
    }
    return 0
}
