
import UIKit


struct tracker {
    
    public static var count = 0
    
    init() {
        tracker.count += 1
    }
}


func linearSearch<T: Equatable> (_ array: [T], _ key: T) -> Int? {
    
    
    for i in array.indices {
        tracker()
        if array[i] == key {
            
           
              print("Solved with linearSeach in \(tracker.count) moves")
              tracker.count = 0
            
            return i
        }
    }
    return nil
}


func insertionSort<T> (_ array: [T],_ isOrderedBefore: (T, T) -> Bool) -> [T] {
    
    
    var a = array
    
    for i in 1..<a.count {
        
        var j = i
        let temp = a[j]
        
        while j > 0 && isOrderedBefore( temp, a[j - 1] ) {
            
            a[j] = a[j - 1]
            j -= 1
            
        }
        
        //put in place
        a[j] = temp
        
    }
    return a
    
    
}

var random = [5, 1, 65, 2, 6, 3]
insertionSort(random, <)


var numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]



linearSearch(numbers, 67)



func binarySearch<T: Comparable> (_ array: [T], key: T, range: Range<Int>) -> Int? {
    
    //empty array
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        
        tracker()
        
        let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if array[middleIndex] > key {
            return binarySearch(array, key: key, range: range.lowerBound..<middleIndex)
        }
        else if array[middleIndex] < key {
            return binarySearch(array, key: key, range: middleIndex + 1..<range.upperBound)
        } else {
            
            print("Solved with binarySearch in \(tracker.count) moves")
            return middleIndex
        }
    }
}


binarySearch(numbers, key: 67, range: 0..<numbers.count)

