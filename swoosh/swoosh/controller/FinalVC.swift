//
//  FinalVC.swift
//  swoosh
//
//  Created by Joe on 6/22/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {
    var player:Player!
    @IBOutlet weak var leagueBtn: BorderButton!
    @IBOutlet weak var levelBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        leagueBtn.setTitle(player.desiredLeague , for: .disabled)
        levelBtn.setTitle(player.level, for: .disabled)
        
        handleLeagueButtonBackground()
        
    }
    
    func handleLeagueButtonBackground() {
        switch player.desiredLeague  {
        case Player.LEAGUE_MEN:
            leagueBtn.backgroundColor=UIColor.init(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.3)
        case Player.LEAGUE_WOMEN:
            leagueBtn.backgroundColor=UIColor.init(red: 1.0, green: 145/255, blue: 0.0, alpha: 0.3)
        case Player.LEAGUE_COED:
            leagueBtn.backgroundColor=UIColor.init(red: 1.0, green: 135/255, blue: 1.0, alpha: 0.3)
            
        default:
            leagueBtn.backgroundColor=UIColor.black
        }
    }
    
}
