//
//  main.swift
//  SwiftQueue
//
//  Created by 김소은 on 2020/12/28.
//  Copyright © 2020 김소은. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head <= queue.count, let element = queue[head] else { return nil }
        
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        
        return element
    }
}


var myQueue = Queue<Int>()
myQueue.enqueue(10)
myQueue.dequeue()

