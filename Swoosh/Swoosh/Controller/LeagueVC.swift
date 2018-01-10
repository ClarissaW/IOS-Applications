//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Wang, Zewen on 2018-01-10.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCsegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "Women")
    }
    
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectLeague(leagueType: "Men")
    }
    func selectLeague(leagueType : String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "skillVCsegue"{
            let DVC = segue.destination as! SkillVC
                DVC.player = player
         }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
