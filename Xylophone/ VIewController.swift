//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    @IBAction func notePressed(_ sender: UIButton) {
        var selectedSoundFileName : String = soundArray[sender.tag-1]
        playSound(fileName: selectedSoundFileName)
    }
    func playSound(fileName:String){
        let soundURL = Bundle.main.url(forResource:fileName, withExtension:"wav")
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        } catch let error as NSError {
            print(error)
        }
    }
}

