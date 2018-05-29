
//
//  RecievedAsk.swift
//  CardGame
//
//  Created by Jung seoung Yeo on 2018. 5. 25..
//  Copyright © 2018년 JK. All rights reserved.
//

protocol Dealerable {
    func makeResultFormat() -> String
    func makeResultFormat(_ handler: (CardStack) -> Void)
}
