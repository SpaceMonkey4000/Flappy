
import SpriteKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        backgroundColor = UIColor.init(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)

        let birds = 8

        for index in 0 ..< birds {
            let angle: CGFloat = 2.0*CGFloat.pi*CGFloat(index)/CGFloat(birds)
            let x: CGFloat = cos(angle)*200.0
            let y: CGFloat = sin(angle)*200.0

            let bird = SKSpriteNode(imageNamed: "Flappy-5x")
            bird.position = CGPoint(x: x, y: y)
            bird.zRotation = angle - CGFloat.pi/2.0
            addChild(bird)
        }
    }

}
