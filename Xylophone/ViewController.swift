//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        let buttonTitle = sender.title(for: .normal)!
        if buttonTitle.contains("C"){
            playSound(fileName: "C")
        }else if buttonTitle.contains("D"){
            playSound(fileName: "D")
        }else if buttonTitle.contains("E"){
            playSound(fileName: "E")
        }else if buttonTitle.contains("F"){
            playSound(fileName: "F")
        }else if buttonTitle.contains("G"){
            playSound(fileName: "G")
        }else if buttonTitle.contains("A"){
            playSound(fileName: "A")
        }else if buttonTitle.contains("B"){
            playSound(fileName: "B")
        }
        
        
    }
    
    
    func playSound(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    

}

