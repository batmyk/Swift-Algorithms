//
//  Closures.swift
//  
//
//  Created by Mayank on 10/08/22.
//

// Most appearing string in array

import UIKit
import Darwin


let colors = ["yellow","blue","green", "white", "black", "black","black","yellow","blue","green", "white", "black", "black","black","yellow","blue","green", "white", "black", "black","black","yellow","blue","green", "white", "black","black","black" ,"black","yellow","blue","green", "white", "black", "black","black"]


func countMostAppearingValueInArray(inputArray: [String]) -> [String] {
    
    var dicTemp = [String:Int]()
    var topColors: [String] = []
    
    for color in inputArray {
        
        if let count = dicTemp[color] {
            dicTemp[color] = count + 1
        }
        else {
            dicTemp[color] = 1
        }
        
    }
    
    let highest = dicTemp.values.max()
    
    for (color, count) in dicTemp {
        if dicTemp[color] == highest {
            topColors.append(color)
        }
    }
    
    return topColors
}

countMostAppearingValueInArray(inputArray: colors)
