//
//  ViewController.swift
//  Xylophone
//
//  Created by Sergey Romanchuk on 9.06.21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    private var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
//        sender.layer.opacity = 0.5
//        print("Start")
//        let timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
//            print("End")
//            sender.layer.opacity = 1
//        }
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
        playSound(for: sender.titleLabel?.text ?? "")
    }
    
    private func playSound(for title: String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

