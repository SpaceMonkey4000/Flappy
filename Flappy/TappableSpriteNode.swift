//
//  TappableSpriteNode.swift
//  Flappy
//
//  Created by Axel on 5/23/17.
//  Copyright © 2017 Retroactive Fiasco. All rights reserved.
//

import SpriteKit

class TappableSpriteNode: SKSpriteNode {

    var didTap: (() -> Void)?

    var isTouched = false
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture , color: color, size: size)
        isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        didTap?()
        
        isTouched = true
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouched = false
    }
    
}
