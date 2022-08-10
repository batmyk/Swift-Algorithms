//
//  Closures.swift
//  
//
//  Created by Mayank on 10/08/22.
//

// Most appearing string in array

import UIKit
import Darwin

// Add two linked List

class ListNode {
    
    var value: Int
    var next: ListNode?
    
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
    
}


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
 
    var dummy: ListNode? = ListNode(-1)
    var current = dummy
    
    var carry = 0
    
    while l1 != nil || l2 != nil || carry > 0 {
        let l1Val = l1?.value ?? 0
        let l2Val = l2?.value ?? 0
        
        let sum = l1Val + l2Val + carry
        
        carry = sum / 10
        current?.next = ListNode(sum%10)
        l1 = l1?.next
        l2 = l2?.next
        current = current?.next
    }
    
    return dummy?.next
}
