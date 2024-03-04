import UIKit

//: MARK: - Bubble Sort

//: [9,6,2,3,10]
func bubbleSort(arr: [Int]) -> [Int] {
    var sortedArr = arr
    for i in 0..<(arr.count - 1) {
        for j in 0..<(arr.count - 1 - i) {
            if sortedArr[j] > sortedArr[j + 1] {
                let temp = sortedArr[j]
                sortedArr[j] = sortedArr[j+1]
                sortedArr[j+1] = temp
            }
        }
    }
    return sortedArr
}
//print(bubbleSort(arr: [9,6,2,3,10]))



// MARK: - Bubble sort with stable
func bubbleSortWithStable(arr: [Int]) -> [Int] {
    var sortedArr = arr
    var isSwaped: Bool = false

    for i in 0..<(arr.count - 1) {
        isSwaped = false

        for j in 0..<(arr.count - 1 - i) {
            if sortedArr[j] > sortedArr[j + 1] {
                let temp = sortedArr[j]
                sortedArr[j] = sortedArr[j+1]
                sortedArr[j+1] = temp
                isSwaped = true
            }
        }
        if !isSwaped {
            break
        }
    }
    return sortedArr
}
//print(bubbleSortWithStable(arr: [9,6,10,2,1,30,21,15,4]))


//: MARK: - Insertion Sort
//: [9,6,10,2,1,30,21,15,4]

func insertionSort(_ arr: [Int]) -> [Int] {
    var sortedArr = arr

    for i in 1..<(sortedArr.count - 1) {

        var j = i - 1
        let insertedItem = sortedArr[i]

        while (j >= 0 && sortedArr[j] > sortedArr[j + 1]) {
            sortedArr[j+1] = sortedArr[j]
            j -= 1
        }
        sortedArr[j+1] = insertedItem
    }
    return sortedArr
}
print("insertionSort ",insertionSort([9,6,10,2,1,30,21,15,4]))
