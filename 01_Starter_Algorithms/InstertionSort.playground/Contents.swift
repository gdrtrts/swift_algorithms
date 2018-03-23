//: Playground - noun: a place where people can play

import UIKit

func insertionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    var a = array
    
    
   
    for x in 1..<a.count {
        
        //create local var that holds x but we can use in the while loop
        var y = x
        //create temp to swap at the end of the inner loop
        let temp = a[y]
        
        //simply checking if array[index] and array[index - 1] is greater or smaller then
        //isOrderedBefore takes 2 arguments of type Generic and return true if first object comes before the second one
        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
 
            //shift 'once' instead of swapping 'all'
            //all items will be shifted one spot here
            a[y] = a[y-1]
            y -= 1
        }
        //copy the item into place
        a[y] = temp
    }
    return a
}


/*
func insertionSortSwap(_ array: [Int]) -> [Int] {
    var a = array
    
    //create a loop from 1 to count - 1
    
    for x in 1..<a.count {
        
        //create local var that holds x but we can use in the while loop
        var y = x
       
        
        //as long as y is greater then 0 and index is smaller then index - 1
        while y > 0 && a[y] < a[y - 1] {
            
            //swap each element in the array
            a.swapAt(y, y-1)
            y -= 1
        }
       
    }
    return a
}
*/

var list = [ "a", "g", "b" ]

var insert = insertionSort(list, <)


//print(insert)
