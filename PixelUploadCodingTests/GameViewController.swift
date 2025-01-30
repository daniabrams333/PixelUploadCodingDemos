//
//  GameViewController.swift
//  PixelUploadCodingTests
//
//  Created by Danielle Abrams on 1/27/25.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // - took out boiler plate code ... testing uploading to github - DHA
        
        let scene = GameScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
