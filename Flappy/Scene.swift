//
//  Scene.swift
//  Flappy
//
//  Created by Drew Olbrich on 5/22/17.
//  Copyright © 2017 Retroactive Fiasco. All rights reserved.
//

import SpriteKit

class Scene: SKScene {

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }

    override func didMove(to view: SKView) {
        start()
    }

    public func start() {
    }

}
