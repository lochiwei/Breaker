//
//  GameViewController.swift
//  Breaker
//
//  Created by pegasus on 2018/08/01.
//  Copyright © 2018年 Lo Chiwei. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    // MARK: - Outlets
    
    var scene: SCNScene!
    var sceneView: SCNView!
    
    // game logic
    let game = GameHelper.shared
    
    // MARK: - Controller Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
    }
    
    func setupScene() {
        
        // scene
        scene = SCNScene(named: "Breaker.scnassets/Scenes/Game.scn")
        
        // scene view
        sceneView = self.view as! SCNView
        
        sceneView.scene = scene
        sceneView.delegate = self
        sceneView.allowsCameraControl = true
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
    }
    
    // MARK: - Controller Settings
    
    override var shouldAutorotate: Bool { return true }
    override var prefersStatusBarHidden: Bool { return true }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIDevice.current.userInterfaceIdiom == .phone ? .allButUpsideDown : .all
    }

}// end: GameViewController

// MARK: - Scene Renderer Delegate

extension GameViewController: SCNSceneRendererDelegate {
    // update
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    }
}// end: extension GVC
