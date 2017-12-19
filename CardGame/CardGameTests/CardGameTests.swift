//
//  CardGameTests.swift
//  CardGameTests
//
//  Created by yuaming on 2017. 12. 14..
//  Copyright © 2017년 JK. All rights reserved.
//

import XCTest

class CardGameTests: XCTestCase {
    func test_Suit_출력() {
        XCTAssertTrue(Suit.club.description == "♣️")
        XCTAssertTrue(Suit.heart.description == "♥️")
        XCTAssertTrue(Suit.diamond.description == "♦️")
        XCTAssertTrue(Suit.spade.description == "♠️")
    }
    
    func test_숫자_출력() {
        XCTAssertTrue(Number.ace.description == "A")
        XCTAssertTrue(Number.king.description == "K")
        XCTAssertTrue(Number.queen.description == "Q")
        XCTAssertTrue(Number.jack.description == "J")
        XCTAssertTrue(Number.four.description == "4")
    }
}