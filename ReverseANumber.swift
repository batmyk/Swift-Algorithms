//
//  ReverseANumber.swift
//  
//
//  Created by Mayank on 10/08/22.
//
// Reverse a Number


class ReverseANumber {
    
    func reverseAnInt(_ x: Int) -> Int {
        
        var input = x
        var result = 0
        
        while (input != 0) {
         
            var multiplier = result * 10
            result = multiplier + input % 10
            input = input / 10
        }
        return result
    }
    
}


let obj = Reverse()
obj.reverseAnInt(1234)

// Output: 4321
