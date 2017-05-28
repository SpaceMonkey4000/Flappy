
import SpriteKit

class GameScene: SKScene {
    
    let rightarrow = TappableSpriteNode(imageNamed: "UI-right")
    let leftarrow = TappableSpriteNode(imageNamed: "UI-left")
    let uparrow = TappableSpriteNode(imageNamed: "UI-up")
    let downarrow = TappableSpriteNode(imageNamed: "UI-down")
    let testarrow = TappableSpriteNode(imageNamed: "UI-shoot")
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.init(red: 0.0, green: 0.5, blue: 1.0, alpha: 1.0)
        
        
        let bird = SKSpriteNode(imageNamed: "Flappy-5x")
        
        
        
        
        bird.position = CGPoint(x: 0, y: 0)
        bird.zRotation = .pi * 0
        addChild(bird)
        
        rightarrow.position = CGPoint(x: 299, y: -330)
        rightarrow.zRotation = .pi * 0
        addChild(rightarrow)
        leftarrow.position = CGPoint(x: 188, y: -330)
        leftarrow.zRotation = .pi * 0
        addChild(leftarrow)
        uparrow.position = CGPoint(x:243,y:-225)
        uparrow.zRotation = .pi * 0
        addChild(uparrow)
        downarrow.position = CGPoint(x:243,y:-435)
        downarrow.zRotation = .pi * 0
        addChild(downarrow)
        testarrow.position = CGPoint(x:-243,y:-435)
        testarrow.zRotation = .pi * 0
        addChild(testarrow)
        
        
        
        
        let waitAction = SKAction.wait(forDuration: 3.0)
        let rotateAction = SKAction.rotate(byAngle: .pi*1.0, duration: 5.0)
        let sizeAction = SKAction.resize(toWidth: 200, height: 750, duration: 2.0)
        let moveRight = SKAction.moveBy(x: 10, y: 0, duration: 0.01)
        let moveLeft = SKAction.moveBy(x: -10, y: 0, duration: 0.01)
        let moveUp = SKAction.moveBy(x:0, y: 10, duration: 0.01)
        let moveDown = SKAction.moveBy(x:0, y: -10, duration: 0.01)
        let shoots = SKAction.moveBy(x:900, y: 0, duration: 1)
        let shoots2 = SKAction.moveBy(x:900, y: 100, duration: 1.25)
        let shoots3 = SKAction.moveBy(x:900, y: -100, duration: 1.25)
        let shoots4 = SKAction.moveBy(x:900, y: 200, duration: 1.5)
        let shoots5 = SKAction.moveBy(x:900, y: -200, duration: 1.5)
        let shoots6 = SKAction.moveBy(x:900, y: -300, duration: 1.75)
        let shoots7 = SKAction.moveBy(x:900, y: 300, duration: 1.75)
        let shoots8 = SKAction.moveBy(x:900, y: 400, duration: 2)
        let shoots9 = SKAction.moveBy(x:900, y: -400, duration: 2)
        
        
        
        func moveRightUntilNotTouched() {
            bird.run(moveRight) {
                if !self.rightarrow.isTouched {
                    return
                }
                moveRightUntilNotTouched()
            }
            
        }
        
        
        func moveLeftUntilNotTouched() {
            bird.run(moveLeft) {
                if !self.leftarrow.isTouched {
                    return
                }
                moveLeftUntilNotTouched()
            }
        }
        
        func moveUpUntilNotTouched() {
            bird.run(moveUp) {
                if !self.uparrow.isTouched {
                    return
                }
                moveUpUntilNotTouched()
            }
        }
        func moveDownUntilNotTouched() {
            bird.run(moveDown) {
                if !self.downarrow.isTouched {
                    return
                }
                moveDownUntilNotTouched()
            }
        }
        
        func shoot() {
            let bullet = SKSpriteNode (imageNamed: "bullet")
            let bullet2 = SKSpriteNode (imageNamed: "bullet")
            let bullet3 = SKSpriteNode (imageNamed: "bullet")
            let bullet4 = SKSpriteNode (imageNamed: "bullet")
            let bullet5 = SKSpriteNode (imageNamed: "bullet")
            let bullet6 = SKSpriteNode (imageNamed: "bullet")
            let bullet7 = SKSpriteNode (imageNamed: "bullet")
            let bullet8 = SKSpriteNode (imageNamed: "bullet")
            let bullet9 = SKSpriteNode (imageNamed: "bullet")
            bullet.zPosition = bird.zPosition - 1.0
            bullet2.zPosition = bird.zPosition - 1.0
            bullet3.zPosition = bird.zPosition - 1.0
            bullet4.zPosition = bird.zPosition - 1.0
            bullet5.zPosition = bird.zPosition - 1.0
            bullet6.zPosition = bird.zPosition - 1.0
            bullet7.zPosition = bird.zPosition - 1.0
            bullet8.zPosition = bird.zPosition - 1.0
            bullet9.zPosition = bird.zPosition - 1.0
            let movetobird = SKAction.move(to: bird.position, duration: 0)
            let shoot2 = SKAction.sequence([movetobird,shoots])
            let shoot3 = SKAction.sequence([movetobird,shoots2])
            let shoot4 = SKAction.sequence([movetobird,shoots3])
            let shoot5 = SKAction.sequence([movetobird,shoots4])
            let shoot6 = SKAction.sequence([movetobird,shoots5])
            let shoot7 = SKAction.sequence([movetobird,shoots6])
            let shoot8 = SKAction.sequence([movetobird,shoots7])
            let shoot9 = SKAction.sequence([movetobird,shoots8])
            let shoot10 = SKAction.sequence([movetobird,shoots9])
            
            
            shootBullet(node: bullet, action: shoot2)
            shootBullet(node: bullet2, action: shoot3)
            shootBullet(node: bullet3, action: shoot4)
            shootBullet(node: bullet4, action: shoot5)
            shootBullet(node: bullet5, action: shoot6)
            shootBullet(node: bullet6, action: shoot7)
            shootBullet(node: bullet7, action: shoot8)
            shootBullet(node: bullet8, action: shoot9)
            shootBullet(node: bullet9, action: shoot10)
        }
        
        rightarrow.didTap = {
            moveRightUntilNotTouched()
            
            
        }
        leftarrow.didTap = {
            moveLeftUntilNotTouched()
        }
        uparrow.didTap = {
            moveUpUntilNotTouched()
            
        }
        downarrow.didTap = {
            moveDownUntilNotTouched()
            
        }
        
        
        testarrow.didTap = {
            shoot()
            
        }
        
        
    }
    
    func shootBullet(node: SKSpriteNode, action: SKAction) {
        addChild(node)
        node.run(action) {
            node.removeFromParent()
        }
    }
    
}
