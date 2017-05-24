
import SpriteKit

class GameScene: SKScene {

    let bird = TappableSpriteNode(imageNamed: "Flappy-5x")
 
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.init(red: 0.8, green: 1.0, blue: 1.0, alpha: 1.0)

        
        bird.position = CGPoint(x: 0, y: 0)
        bird.zRotation = .pi * 0
        addChild(bird)
        
        let waitAction = SKAction.wait(forDuration: 3.0)
        let moveAction = SKAction.move(to: CGPoint(x: -150, y: 200), duration: 5.0)
        let rotateAction = SKAction.rotate(byAngle: .pi*1.0, duration: 5.0)
        let sizeAction = SKAction.resize(toWidth: 700, height: 400, duration: 2.0)
        let moveByAction = SKAction.moveBy(x: 3, y: 3, duration: 0.05)

        func moveUntilNotTouched() {
            bird.run(moveByAction) {
                if !self.bird.isTouched {
                    return
                }
                moveUntilNotTouched()
            }
        }
        
        bird.didTap = {
            moveUntilNotTouched()
        }
    }

}
