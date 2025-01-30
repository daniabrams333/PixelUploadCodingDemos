//
//  GameScene.swift
//  PixelUploadCodingTests
//
//  Created by Danielle Abrams on 1/27/25.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        // Adding the background sprite here
        
        let background = SKSpriteNode(imageNamed: "background")
        
        
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
        
        let carRear = SKSpriteNode(imageNamed: "headOn")
        let turnRight = SKSpriteNode(imageNamed: "turnRight")
        let turnLeft = SKSpriteNode(imageNamed: "turnLeft")
        
        carRear.position = CGPoint(x: size.width/2 , y: size.height/2 )
        carRear.zRotation = CGFloat.pi / -2
        addChild(carRear)
    }
}
