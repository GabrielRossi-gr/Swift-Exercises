import SwiftUI
import SpriteKit


struct ContentView: View {
    let gameScene = SKScene(fileNamed: "GameScene")
    var body: some View {
        
        VStack {
            if let gameScene{
                SpriteView(scene: gameScene)
            }
            
        }
    }
}


