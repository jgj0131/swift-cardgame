//
//  Player.swift
//  CardGame
//
//  Created by 윤지영 on 16/11/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Player: GamePlayer {
    private var cards: CardStack

    init() {
        self.cards = CardStack(cards: [])
    }

    func getName(with number: Int) -> String {
        return "참가자#\(number)"
    }

    func take(card: Card) {
        cards.add(card)
    }

    func showCards() -> String {
        return "\(cards)"
    }

    func resetCards() {
        cards.reset()
    }

}
