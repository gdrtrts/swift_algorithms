//: Playground - noun: a place where people can play

import UIKit



//push (top of stack)
//pop (remove element from top)
//peek (look at top element without removing)

//<> makes it generic
struct Stack<Element> {
    
    fileprivate var array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    //_ so you don't need parameter name
    //mutation because we're mutating array
    mutating func push(_ element: Element) {
        
        array.append(element)
        
    }
    
    mutating func pop() -> Element?  {
        
         return array.popLast()
    }
    
    
    func peek() -> Element? {
        
        return array.last
    }
    
    
    
    
}


var array = Stack<String>()

array.push("Godart")
array.push("Matt")
array.push("Julian")
array.push("Dickhead")




print(array)


//
extension Stack: CustomStringConvertible {
    
    var description: String {
        
        let topdivider = "--------TOP--------\n"
        let bottom = "--------END--------"
        //$0 is the first parameter
        //make sure to first make it into a string because it can contain other types as it's generic
        let reversed = array.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topdivider + reversed + bottom
        
    }
    
    
}

