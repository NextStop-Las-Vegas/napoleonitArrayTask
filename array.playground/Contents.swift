import UIKit

var unsortedArray = [3, 4, 1, 2, 16, 27, 13]

func sortArray(_ array: [Int]) -> [Int] {
    var arr: [[Int]] = [[],[]]
    array.forEach { arr[$0 % 2].append($0) }
    return arr[0].sorted(by: <) + arr[1].sorted(by: >)
}

sortArray(unsortedArray)
print(sortArray(unsortedArray))
