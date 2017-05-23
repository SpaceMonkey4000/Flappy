
import SpriteKit

class GameScene: Scene {

    var flappyNode = SKSpriteNode(imageNamed: "Flappy-5x")

    override func start() {
        addChild(flappyNode)

        backgroundColor = UIColor.init(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
