//
//  GameScene.swift
//  SpaceBird
//
//  Created by Umut Asmaz on 21.03.2023.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene , SKPhysicsContactDelegate{
   
    enum ColliderType : UInt32 {
        case Bullet3 = 1
        case EnemyUfo = 2
        
    }
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var bullet3 = SKSpriteNode()
    var enemyUfo = SKSpriteNode()
    
    var gameStarted = false
    var originalBulletPosition : CGPoint?
    var originalUfoPosition : CGPoint?
  
    var score = 0
    var scoreLabel = SKLabelNode()
    
    var playerName = ""
    var playerNameLabel = SKLabelNode()
    
    
   
    override func didMove(to view: SKView) {

         //PhysicBody
         
         self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
         self.scene?.scaleMode = .aspectFit
         self.physicsWorld.contactDelegate = self
         
        
         bullet3 = childNode(withName: "bullet3") as! SKSpriteNode
        let bullet3texture = SKTexture(imageNamed: "bullet3")
        bullet3.physicsBody = SKPhysicsBody(circleOfRadius: bullet3texture.size().height / 6)
        bullet3.physicsBody?.affectedByGravity = false
        bullet3.physicsBody?.isDynamic = true
        bullet3.physicsBody?.mass = 0.15
        originalBulletPosition = bullet3.position
        
        bullet3.physicsBody?.contactTestBitMask = ColliderType.Bullet3.rawValue
        bullet3.physicsBody?.categoryBitMask = ColliderType.Bullet3.rawValue
        bullet3.physicsBody?.collisionBitMask = ColliderType.EnemyUfo.rawValue
       
        
        let enemyUfoTexture = SKTexture(imageNamed: "enemyUfo")
        let ufoSize = CGSize(width: enemyUfoTexture.size().width / 5, height: enemyUfoTexture.size().height / 5)
        enemyUfo = childNode(withName: "enemyUfo") as! SKSpriteNode
        enemyUfo.physicsBody = SKPhysicsBody(rectangleOf: ufoSize)
        enemyUfo.physicsBody?.isDynamic = true
        enemyUfo.physicsBody?.affectedByGravity = false
        enemyUfo.physicsBody?.allowsRotation = true
        enemyUfo.physicsBody?.mass = 1
        originalUfoPosition =  enemyUfo.position
        
        enemyUfo.physicsBody?.collisionBitMask = ColliderType.Bullet3.rawValue
        
        scoreLabel.fontName = "Helvatica"
        scoreLabel.fontSize = 60
        scoreLabel.text = "0"
        scoreLabel.position = CGPoint(x: 0, y: self.frame.height / 4)
        scoreLabel.zPosition = 2
        self.addChild(scoreLabel)
        
        playerNameLabel.fontName = "Helvatica"
        playerNameLabel.fontSize = 40
        playerNameLabel.text = "Umut ASMAZ"
        playerNameLabel.position = CGPoint(x: 0, y: self.frame.height * 1)
        playerNameLabel.zPosition = 2
        self.addChild(playerNameLabel)
           
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.collisionBitMask == ColliderType.Bullet3.rawValue || contact.bodyB.collisionBitMask == ColliderType.Bullet3.rawValue {
            score += 1
            scoreLabel.text = String(score)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bullet3 {
                                bullet3.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bullet3 {
                                bullet3.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
        
    }
  
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gameStarted == false {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                let touchNodes = nodes(at: touchLocation)
                
                if touchNodes.isEmpty == false {
                    for node in touchNodes {
                        if let sprite = node as? SKSpriteNode {
                            if sprite == bullet3 {
                             
                                let dx = -(touchLocation.x - originalBulletPosition!.x)
                                let dy = -(touchLocation.y - originalBulletPosition!.y)
                                
                                let impulse = CGVector(dx: dx, dy: dy)
                                bullet3.physicsBody?.applyImpulse(impulse)
                                bullet3.physicsBody?.affectedByGravity = true
                                gameStarted = true
                            }
                        }
                    }
                }
            }
        }
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        if let bullet3PhysicsBody = bullet3.physicsBody {
            
            if bullet3PhysicsBody.velocity.dx <= 300 && bullet3PhysicsBody.velocity.dy <= 300 && bullet3PhysicsBody.angularVelocity <= 300 && gameStarted == true {
                
                bullet3.physicsBody?.affectedByGravity = false
                bullet3.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
                bullet3.zPosition = 1
                bullet3.position = originalBulletPosition!
                gameStarted = false
                enemyUfo.physicsBody?.affectedByGravity = false
                enemyUfo.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
                enemyUfo.zPosition = 1
                enemyUfo.position = originalUfoPosition!
                bullet3.zRotation = 0
                enemyUfo.zRotation = 0
            }
        }
    }
}

/*func showPlayerName() {
    let playerNameLabel = SKLabelNode(text: playerName)
    playerNameLabel.fontSize = 20
    playerNameLabel.fontColor = .white
    playerNameLabel.position = CGPoint(x: frame.midX, y: frame.maxY - 50)
    addChild(playerNameLabel)
}   */
