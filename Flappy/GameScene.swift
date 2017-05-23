
import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.init(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)

//        drawBirds(birds: 4, radius: 75.0)
//        drawBirds(birds: 8, radius: 150.0)
//        drawBirds(birds: 12, radius: 225.0)
//        drawBirds(birds: 16, radius: 300.0)
//        drawBirds(birds: 20, radius: 375.0)

        for index in 1...5 {
            drawBirds(birds: index * 4, radius: CGFloat(index * 75))
         
            
            
            
            
            
        
        }
    }
    
    
    
    
    
    
    
    
    func drawBirds(birds: Int, radius: CGFloat) {
        for index in 0 ..< birds {
            let angle: CGFloat = 2.0*CGFloat.pi*CGFloat(index)/CGFloat(birds)
            let x: CGFloat = cos(angle)*radius
            let y: CGFloat = sin(angle)*radius
            
            let bird = SKSpriteNode(imageNamed: "Flappy-5x")
            bird.position = CGPoint(x: x, y: y)
            bird.zRotation = angle - CGFloat.pi/2.0
            addChild(bird)
        }
    }
    
}


