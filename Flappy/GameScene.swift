
import SpriteKit

class GameScene: SKScene {
    
    let sinBird = TappableSpriteNode(imageNamed: "Flappy-5x")
    
    var shouldWiggleSinBird = false
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.init(red: 0.8, green: 1.0, blue: 1.0, alpha: 1.0)

        initSinBird()
        
        let bird = SKSpriteNode(imageNamed: "Flappy-5x")
        bird.position = CGPoint(x: 0, y: 0)
        bird.zRotation = .pi * 0.5
        addChild(bird)
        
        let otherbird = SKSpriteNode(imageNamed: "Blue")
        otherbird.position = CGPoint(x: 150, y: 350)
        addChild(otherbird)
        
        let waitAction = SKAction.wait(forDuration: 3.0)
        let moveAction = SKAction.move(to: CGPoint(x: -150, y: 200), duration: 5.0)
        let rotateAction = SKAction.rotate(byAngle: .pi*1.0, duration: 5.0)
        let group = SKAction.group([moveAction, rotateAction])
        let sequence = SKAction.sequence([waitAction, group])
        
        bird.run(sequence)
        
        let waitAction2 = SKAction.wait(forDuration: 1.5)
        let moveAction2 = SKAction.move(to: CGPoint(x: 50, y: -220), duration: 1.0)
        let rotateAction2 = SKAction.rotate(byAngle: .pi*4.0, duration: 1.0)
        let group2 = SKAction.group([moveAction2, rotateAction2])
        let sequence2 = SKAction.sequence([waitAction2, group2])
        
        otherbird.run(sequence2)
        
        let waitAction3 = SKAction.wait(forDuration:4.0)
        let sizeAction = SKAction.resize(toWidth: 700, height: 400, duration: 2.0)
        let sequence3 = SKAction.sequence([waitAction3, sizeAction])
        
        otherbird.run(sequence3)
        
        let bird3 = SKSpriteNode(imageNamed: "Flappy-5x")
        bird3.position = CGPoint(x: -200, y: 200)
        addChild(bird3)
        let rotate3 = SKAction.rotate(byAngle: .pi, duration: 0.5)
        let rotate3Forever = SKAction.repeatForever(rotate3)
        bird3.run(rotate3Forever)
        
        
        let bird4 = SKSpriteNode(imageNamed: "Blue")
        bird4.position = CGPoint(x: -100, y: -250)
        addChild(bird4)
        
    
        let bird4runs = SKAction.moveBy(x: 2, y: 4, duration: 0.01)
        let bird4cool = SKAction.wait(forDuration: 0.01)
        let bird4seq = SKAction.sequence([bird4cool,bird4runs])
        
        let bird4seqRepeat10 = SKAction.repeat(bird4seq, count: 100)
        bird4.run(bird4seqRepeat10)
        
        
        
        let bird5 = SKSpriteNode(imageNamed: "Blue")
        bird5.position = CGPoint(x: 100, y: -30)
        addChild(bird5)
        
        
    }
 
    override func update(_ currentTime: TimeInterval) {
        updateSinBird(currentTime: currentTime)
    }

    func initSinBird() {
        addChild(sinBird)
        
        sinBird.didTap = {
            self.shouldWiggleSinBird = true
        }
    }
    
    func updateSinBird(currentTime: TimeInterval) {
        let x = 300.0
        let y = 0.0
        if shouldWiggleSinBird {
            sinBird.xScale = CGFloat(sin(currentTime*8.0)) + CGFloat(2.0)
            sinBird.yScale = CGFloat(sin(currentTime*11.0)) + CGFloat(1.5)
        }
        sinBird.position = CGPoint(x: x, y: y)
    }
    
}
