
import Foundation


public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var result = 0


    for index in 0..<A.count - 1 {
        let number = A[index]
        for targetIndex in index + 1..<A.count {
            let targetNumber = A[targetIndex]
            if (index + number >= targetIndex - targetNumber && index + number <= targetIndex + targetNumber) || (targetIndex - targetNumber >= index - number && targetIndex - targetNumber <= index + number) {
                result += 1

                if result > 10000000 {
                    return -1
                }
            }
        }
    }

    return result
}
