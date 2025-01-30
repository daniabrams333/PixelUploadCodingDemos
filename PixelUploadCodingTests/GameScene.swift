//
//  GameScene.swift
//  PixelUploadCodingTests
//
//  Created by Danielle Abrams on 1/27/25.
//

import SpriteKit

class GameScene: SKScene {
    let carRear = SKSpriteNode(imageNamed: "headOn")
    let background = SKSpriteNode(imageNamed: "background")
    
    var lastUpdateTime: TimeInterval = 0
    var dt: TimeInterval = 0
    let carMovePointsPerSec: CGFloat = 5
    var velocity = CGPoint.zero
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        // Adding the background sprite here
        
       
        
        
//        background.anchorPoint = CGPoint(x:0.5, y:0.5)
//        background.position = CGPoint(x:0.5, y:0.5)
        
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        
        background.zRotation = CGFloat.pi / -2
        
        
        background.zPosition = -1
       // background.size = CGSize(width:1200, height:900)
        
        background.setScale(2.2)
        
        addChild(background)
        
        
        let bgSize = background.size
        print("Size: \(bgSize)")
        
      
       // let turnRight = SKSpriteNode(imageNamed: "turnRight")
       // let turnLeft = SKSpriteNode(imageNamed: "turnLeft")
        
        carRear.position = CGPoint(x: size.width/3 , y: size.height/2)
        carRear.zRotation = CGFloat.pi / -2
        addChild(carRear)
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if lastUpdateTime > 0 {
            dt = currentTime - lastUpdateTime
        } else {
            dt = 0
            
        }
        lastUpdateTime = currentTime
        print("\(dt*1000) milliseconds since last update")
        
        //carRear.position = CGPoint(x: carRear.position.x + 8, y: carRear.position.y)
        move(sprite: carRear,
             velocity: CGPoint(x: carMovePointsPerSec, y:0))
    }
    
    func move(sprite: SKSpriteNode, velocity: CGPoint) {
        // 1
        
        let amountToMove = CGPoint(x: velocity.x * CGFloat(dt), y: velocity.y * CGFloat(dt))
        
        print("Amount to move: \(amountToMove)")
        //2
        
        sprite.position = CGPoint(x: sprite.position.x + amountToMove.x,
                                  y: sprite.position.y + amountToMove.y)
    }
}
