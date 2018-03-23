
import Foundation

public struct Queue<Generic> {
    
    //create an instance of LinkedList
    fileprivate var list = LinkedList<Generic>()
    
    public mutating func enqueue(_ element: Generic) {
        
        list.append(element)
        
    }
    
    public mutating func dequeue() -> Generic? {
        
        guard !list.isEmpty, let element = list.first else {return nil}
        list.remove(element)
        return element.value
        
    }
    
    public func peek() -> Generic? {
        
        return list.first?.value
        
    }
    
    public var isEmpty: Bool {
        return list.isEmpty
    }
    
  

}


var Q = Queue<Int>()

Q.enqueue(5)
Q.enqueue(3)
Q.enqueue(10)

//Q.dequeue()

print(Q)


extension Queue: CustomStringConvertible {
    
    public var description: String {
        
        return list.description
        
    }
    
}





