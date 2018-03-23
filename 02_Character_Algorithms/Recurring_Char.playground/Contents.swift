import UIKit


func hasRecurringCharacter (_ string: String) -> String? {
    
    var tempString = string
    
    //init empty dictionary
    var array = [Character: Character]()
    
    for char in string {
    
        //if the specefic key doesn't exist yet
        if array[char] == nil {
            
            array[char] = char
            
        } else {
            
            //if it does then that's the key we want to return
            tempString = String(char)
            return tempString
        }
    }
    //no character has been repeated
    return "Nothing is repeated"
    
}



var str = "ABCA" //returns A

var nilString = "ABC" //returns "Nothing is repeated"

hasRecurringCharacter(str)
