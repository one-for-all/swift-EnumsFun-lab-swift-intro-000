//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

//CARD.SWIFT
//First, open up Card.swift in Xcode's code editor. Cards.swift contains two enums, Rank and Suit, and a class, Card. Here's what you must do to finish implementing these enums and classes:
//Add a String property to Rank called stringValue. This should return a string representing the value of the card: the numbered value for numbered cards, or "J", "Q", "K", or "A" for face cards.
//Add a property called suit of type Suit to the Card class.
//Add a property called rank of type Rank to the Card class.
//Add a computed property called description of type String to Card. It should return a string representing the suit and rank of the card, in the format "<rank><suit>".
//Create an initializer for Card that accepts both a rank and a suit and sets the appropriate properties. These parameters should be called rank and suit.

enum Suit: String {
    static let suits: [Suit] = [.heart, .diamond, .spade, .club]
    case heart = "♥️", diamond = "♦️", spade = "♠️", club = "♣️"
}

enum Rank: Int {
    static let ranks: [Rank] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]
    
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    
    var stringValue: String {
        switch self {
        case .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten:
            return "\(rawValue)"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        case .ace:
            return "A"
        }
        
    }
}

class Card: Equatable {
    var suit: Suit
    var rank: Rank
    var description: String {
        return rank.stringValue+suit.rawValue
    }
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.description == rhs.description
    }
}
