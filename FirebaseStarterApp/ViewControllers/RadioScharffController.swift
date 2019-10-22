//
//  RadioScharffController.swift
//  FirebaseStarterApp
//
//  Created by Juan on 10/18/19.
//  Copyright © 2019 Instamobile. All rights reserved.
//

import UIKit
import AVFoundation

class RadioScharffController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
         super.viewDidLoad()
     }
    
    
    @IBAction func radio1(_ sender: UIButton) {
        
        guard let url = Bundle.main.url(forResource: "radio1", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

           // guard let audioPlayer = player else { return }

            audioPlayer.play()

        } catch let error {
            print(error.localizedDescription)
        }
        
    }
        
    @IBAction func C4(_ sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0;
        
    }
    
    @IBAction func r21(_ sender: Any) {
       guard let url = Bundle.main.url(forResource: "r21", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

           // guard let audioPlayer = player else { return }

            audioPlayer.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func st21(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0;
    }
    
    @IBAction func r07(_ sender: UIButton) {
        guard let url = Bundle.main.url(forResource: "r07", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

           // guard let audioPlayer = player else { return }

            audioPlayer.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func st07(_ sender: Any) {
        
        audioPlayer.stop()
        audioPlayer.currentTime = 0;
    }
    
    
    
}
