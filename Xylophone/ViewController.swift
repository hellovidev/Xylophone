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
        playSound(for: sender.titleLabel?.text ?? "")
    }
    
    private func playSound(for title: String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

