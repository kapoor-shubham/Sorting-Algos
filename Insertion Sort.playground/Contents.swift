import Foundation

//      Example
//
//  [12, 11, 13, 5, 6]
//
//  Let us loop for i = 1 (second element of the array) to 4 (last element of the array)
//
//  i = 1. Since 11 is smaller than 12, move 12 and insert 11 before 12
//  [11, 12, 13, 5, 6]
//
//  i = 2. 13 will remain at its position as all elements in A[0..I-1] are smaller than 13
//  [11, 12, 13, 5, 6]
//
//  i = 3. 5 will move to the beginning and all other elements from 11 to 13 will move one position ahead of their current position.
//  [5, 11, 12, 13, 6]
//
//  i = 4. 6 will move to position after 5, and elements from 11 to 13 will move one position ahead of their current position.
//  [5, 6, 11, 12, 13]

extension Array where Element: Comparable {
    
    func insertionSort(by areInIncreasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        
        for i in 1..<data.count {
            let temp = data[i]
            
            var j = i-1

            while (j >= 0 && areInIncreasingOrder(temp, data[j])) {
                data[j+1] = data[j]
                j = j-1
            }

            data[j+1] = temp
        }
        
        return data
    }
}

var myArray = [4,6,1,3,2,9]

func sortArray() {
    let ascendingSortedArray = myArray.insertionSort(by: <)
    print(ascendingSortedArray)
    let descendingSortedArray = myArray.insertionSort(by: >)
    print(descendingSortedArray)
}

sortArray()
