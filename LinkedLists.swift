//
//  LinkedList.swift
//  
//
//  Created by Mayank on 10/08/22.
//

Linked List



// Let's Implement a Linked List (Insert, Delete, "Special Insert")

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

// [1, 2, 3, 4]
// arr.append(5)
// [1, 2, 3, 4, 5]
class LinkedList {
    
    var head: Node?
    
    func displayListItems() {
        print("Here is whats inside of your list:")
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    func insert(value: Int) {
        // empty list
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
    }
    
    // #2 Delete
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
        }
        
        var prev: Node?
        var current = head
        
        while current != nil && current?.value != value  {
            prev = current
            current = current?.next
        }
        
        prev?.next = current?.next
    }
    
    // "Special Insert"
    // // 1 -> 2 -> 4 -> 5 -> nil
    func insertInOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        var currentNode: Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        
        currentNode?.next = Node(value: value, next: currentNode?.next)
    }
    
    func setupDummyNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
    
}

let sampleList = LinkedList()
// 1 -> 2 -> 3 -> nil
//sampleList.setupDummyNodes()
sampleList.insert(value: 1)
// 1 -> nil
sampleList.insert(value: 2)
// 1 -> 2 -> nil
sampleList.insert(value: 4)
sampleList.insert(value: 5)
sampleList.displayListItems()

sampleList.insertInOrder(value: 3)

//sampleList.delete(value: 1)
//sampleList.delete(value: 3)
//sampleList.delete(value: 2)

sampleList.displayListItems()



//print(sampleList.head?.next?.next?.value)
