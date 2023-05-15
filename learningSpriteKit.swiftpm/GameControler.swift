//
//  GameControler.swift
//  learningSpriteKit
//
//  Created by Gabriel Rossi on 05/04/23.
//

import Foundation
import SpriteKit


class GameControler: SKScene{
    override func didMove(to view: SKView) {
        
//        var player: SKSpriteNode?
//
//        player = childNode(withName: "player") as? SKSpriteNode
//
//        player?.run(.applyForce(CGVector(dx: 10, dy: 0), duration: 3))
//
        
//        let playerAnimation: [SKTexture] = [
//            SKTexture(imageNamed: "player_1"),
//            SKTexture(imageNamed: "player_2")
//
//        ]
//        player?.run(.repeatForever(.animate(with: playerAnimation, timePerFrame: 0.1)))
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("clicou")
    }
    
}
