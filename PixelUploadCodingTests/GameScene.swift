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
        
        addChild(background)
        
        
    }
}
