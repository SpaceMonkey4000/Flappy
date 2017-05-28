//
//  Random.swift
//  Flappy
//
//  Created by Axel on 5/28/17.
//  Copyright © 2017 Retroactive Fiasco. All rights reserved.
//

import Foundation

func random(min: Int, max: Int) -> Int {
    let range: UInt32 = UInt32(max - min) + 1
    return Int(arc4random_uniform(range)) + min
}
