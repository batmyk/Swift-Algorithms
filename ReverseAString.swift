//
//  ReverseAString.swift
//  
//
//  Created by Mayank on 10/08/22.
//
// Reverse a string



// Reverse a String
func reverseAString(x: String) -> String {
    
    var str = ""
    for character in x {
        
        str = "\(character)" + str
        
    }
    return str
    
}

reverseAString(x: "mayank")

// Output: knayam
