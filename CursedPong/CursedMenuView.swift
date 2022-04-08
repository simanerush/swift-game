//
//  CursedMenuView.swift
//  CursedPong
//
//  Created by Harrison N on 4/7/22.
//

import SwiftUI
import SpriteKit

struct CursedMenuView: View {
    @State var show = false
    var body: some View {
        Button(action: {
                    show.toggle()
                }) {
                    Text("Go to Cursed Pong")
                }.fullScreenCover(isPresented: $show) {
                    CursedPong().edgesIgnoringSafeArea(.all)
                }
    }
}

struct CursedPong: UIViewRepresentable {
    func makeUIView(context: Context) -> SKView {
        let sceneView = SKView()
            if let scene = GameScene(fileNamed: "GameScene") {
              sceneView.showsNodeCount = true
              sceneView.showsFPS = true
                scene.scaleMode = .aspectFill
              sceneView.presentScene(scene)
            }
        return sceneView
    }
    func updateUIView(_ uiView: SKView, context: Context) {
        
    }
}

struct CursedMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CursedMenuView()
    }
}
