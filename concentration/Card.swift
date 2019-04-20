//
//  Card.swift
//  concentration
//
//  Created by Hsin-Min Liao on 2018/12/30.
//  Copyright © 2018 Hsin-Min Liao. All rights reserved.
//

import Foundation

struct Card: Hashable
{
//    var hashValue: Int { return identifier }
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
 
    // static var will be shared among all instances of the class (or struct)
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}


