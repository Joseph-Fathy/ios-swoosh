//
//  LeagueVC.swift
//  swoosh
//
//  Created by Joe on 6/19/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player:Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
//VC functions =====================
    //onCreate
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    //onBackPressed
    @IBAction func unwindToLeague(unwindSegueToLeague: UIStoryboardSegue) {
    }
    //this method is called before viewDidLoad method of the destination
    //used to pass data between VCs 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if the segue is to open Levels ViewContoller
        if let levelsVC = segue.destination as? LevelsVc {
            levelsVC.player = player
        }
    }
//hanndle buttons =====================
    @IBAction func onMenTapped(_ sender: Any) {
        selectLeague(league: Player.LEAGUE_MEN)
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(league: Player.LEAGUE_WOMEN)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(league: Player.LEAGUE_COED)
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "LevelsVCSegue", sender: self)
    }
    
    func selectLeague(league:String){
        player.desiredLeague=league
        nextBtn.isEnabled = true
    }
    
}
