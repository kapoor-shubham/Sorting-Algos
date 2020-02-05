import Foundation

extension Array where Element: Comparable {
     
    func bubbleSort(by areInIncreasingOrder: ((Element, Element) -> Bool) = (<)) -> [Element] {
        var data = self
        
        for i in 0..<(data.count-1) { // 1
            for j in 0..<(data.count-i-1) where areInIncreasingOrder(data[j+1], data[j]) { // 2
                data.swapAt(j, j + 1)
            }
        }
        
        return data
    }
    
    func swap<T: Comparable>(left: inout T, right: inout T) {
        print("Swapping \(left) and \(right)")
        let temp = right
        right = left
        left = temp
    }
}

let myArray = [4,2,6,3,7]

func sortArray() {
    let ascendingSortedArray = myArray.bubbleSort(by: <)
    print(ascendingSortedArray)
    let descendingSortedArray = myArray.bubbleSort(by: >)
    print(descendingSortedArray)
}

sortArray()
