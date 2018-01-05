//
//  ViewController.swift
//  hustle-mode
//
//  Created by Wang, Zewen on 2018-01-03.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var powerButton: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var hustleLbl: UILabel!
    
    @IBOutlet weak var onLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        powerButton.isHidden = false
        darkBlueBG.isHidden = false
        cloudHolder.isHidden = true
        hustleLbl.isHidden = true
        onLbl.isHidden = true
        rocket.isHidden = true
        let url = Bundle.main.url(forResource: "hustle-on", withExtension: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: url!)
            player.prepareToPlay()
            
        }
        catch {
            print(error)
        }
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func powerBtnPressed(_ sender: UIButton) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        player.play()

        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.isHidden=false
            self.rocket.frame = CGRect(x: 0, y: 20, width: 375, height: 390 )
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
        
    }
    
}

