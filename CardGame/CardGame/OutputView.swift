//
//  OutputView.swift
//  CardGame
//
//  Created by Eunjin Kim on 2017. 12. 22..
//  Copyright © 2017년 JK. All rights reserved.
//

import Foundation

class OutputView {
    
    private let cardDeck: CardDeck
    private let gameInfo: GameInfo
    
    init(cardDeck: CardDeck, gameInfo: GameInfo) {
        self.cardDeck = cardDeck
        self.gameInfo = gameInfo
    }
    
    func printResult(numberOfMenu: Int) {
        switch numberOfMenu {
            case 1:
                cardDeck.reset()
                print("카드 전체를 초기화했습니다.")
                print("총 \(cardDeck.count())장의 카드가 있습니다.")
            case 2:
                cardDeck.shuffle()
                print("전체 \(cardDeck.count())장의 카드를 섞었습니다.")
            case 3:
                let card = cardDeck.removeOne()
                print(card.shape, card.number)
                print("총 \(cardDeck.count())장의 카드가 남아있습니다.")
            default:
                break
        }
    }
    
    func printCardStack() {
        let stack = cardDeck.makeCardStack()
        for card in stack {
            print(card.pop())
        }
    }
    
    func printPokerDealer() -> Bool {
        var index = 1
        var stack: [CardStack]
        do {
            stack = try cardDeck.makeCardStack(gameInfo: gameInfo)
        }catch {
            print("게임종료.")
            return false
        }
        for card in stack {
            if stack.count == index {
                print("딜러 ", card.pop())
            }else {
                print("참가자#\(index)", card.pop())
            }
            index += 1
        }
        return true
    }
    
}