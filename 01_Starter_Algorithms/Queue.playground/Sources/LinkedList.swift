public struct LinkedList<T>: CustomStringConvertible {
  //Keeping track of head and tail nodes
  private var head: Node<T>?
  private var tail: Node<T>?

  public init() { }

  //when there is no head there are also no nodes
  public var isEmpty: Bool {
    return head == nil
  }
    
  //the head will always be the first one
  public var first: Node<T>? {
    return head
  }

  //when we add stuff
  public mutating func append(_ value: T) {
    
    let newNode = Node(value: value)
    
    //let local constant tailNode be tail if tail != nil
    if let tailNode = tail {
        
    
    
      //tail always contains last valuea
      //while newNode get set at the beginning of this func with the new value
      newNode.previous = tailNode
      tailNode.next = newNode
        
        
    } else {
       //get's called first and only once
      head = newNode
    }
    //in both cases set a value for tail
    tail = newNode
  }

  public mutating func remove(_ node: Node<T>) -> T {
    let prev = node.previous
    let next = node.next

    if let prev = prev {
      prev.next = next
    } else {
      head = next
    }
    next?.previous = prev

    if next == nil {
      tail = prev
    }

    node.previous = nil
    node.next = nil

    return node.value
  }

  public var description: String {
    var text = "["
    var node = head

    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    return text + "]"
  }
    
    

}

//every node has a value and links to next and previous nodes
//if there's no link it is nil
public class Node<T> {
  public var value: T
  public var next: Node<T>?
  public var previous: Node<T>?

  public init(value: T) {
    self.value = value
  }
    
  
}


