
import SpriteKit

class GameScene: SKScene {

    var flappyNode = SKSpriteNode(imageNamed: "Flappy-5x")

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)

        addChild(flappyNode)
    }

    override func didMove(to view: SKView) {
        // The background color must be set in didMove(to:) instead of init(coder:), because reasons.
        self.backgroundColor = UIColor.init(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
