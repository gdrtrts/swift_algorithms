

import UIKit


/*
 BIG-O Notation performance comparison in Swift
 GIVEN AN UNSORTED ARRAY
 CHECK IF THAT GIVEN ARRAY CONTAINS A PAIR THAT IS EQUAL TO THE GIVEN SUM
 RETURN TRUE IF THAT'S THE CASE
 
 I.E.
 *        *
 [4, 2, 1, 4] sum = 8 (true)
 [9, 2, 3, 1] sum = 8 (false)
 
 
 */


var sum = 6
var collection = [10, 15, 20, 7, 4, 10, 9, 14, 2, 4, 3]

//O(N) LINEAR
func containsSumLinear (_ array: [Int], sum: Int) -> Bool {
    
    var store:[Int] = []
    var counter = 0
    for i in 0..<array.count  {
        
        
        if array[i] < sum {
            
            let contemp = sum - array[i]
            
            
            //check if our stored array contains the value
            if store.contains(array[i] )  {
                
                print("Found in \(counter) iterations \(contemp) + \(array[i]) = \(sum)")
                return true
            }
            //add to array before we check
            store.append(contemp)
            
        }
        counter += 1
    }
    
    return false
    
}

containsSumLinear(collection, sum: sum)

//O(N LOG N) LINEARITHMIC
func containsSum (_ array: [Int], sum: Int) -> Bool {
    
    
    var a = array
    var counter = 0
    
    
    for i in 1..<a.count {
        
        var j = i
        
        while j > 0 {
            
            if (a[j] + a[j - 1]) == sum{
                print("Found in \(counter) iterations \(a[j-1]) + \(a[j]) = \(sum)")
                return true
            }
            //perform a swap to increase chances
            (a[j], a[j - 1]) = (a[j-1], a[j])
            
            j -= 1
            counter += 1
        }
        
    }
    
    return false
    
}


containsSum(collection, sum: sum)


//O(N^2) QUADRATIC
func containsSumN2 (_ array: [Int], sum: Int) -> Bool {
    
    
    var a = array
    var counter = 0
    
    
    for i in 0..<a.count  {
        
        for j in 1..<a.count  {
            
            if a[i] + a[j] == sum {
                
                print("Found in \(counter) iterations.  \(a[i]) + \(a[j]) = \(sum)")
                return true
            }
            counter += 1
        }
        
    }
    
    return false
    
}

containsSumN2(collection, sum: sum)

