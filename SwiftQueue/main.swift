//
//  main.swift
//  SwiftQueue
//
//  Created by 김소은 on 2020/12/28.
//  Copyright © 2020 김소은. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var queue: [T] = []
    
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
        return isEmpty ? nil : queue.removeFirst()
    }
}
