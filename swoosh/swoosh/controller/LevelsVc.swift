//
//  LevelsVc.swift
//  swoosh
//
//  Created by Joe on 6/19/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class LevelsVc: UIViewController {

    var player:Player!

    @IBOutlet weak var coloredLayer: UIView!
    @IBOutlet weak var finishBtn: BorderButton!
    
//VC functions =====================
    override func viewDidLoad() {
        super.viewDidLoad()
        handleBgColor()
    }
    
    @IBAction func unwindToLevls(unwindSegueToLevels: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let finalVC = segue.destination as? FinalVC{
            finalVC.player = player
        }
    }
    
//hanndle buttons =====================

    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectLevel(level: Player.LEVEL_BIGENNER)
    }
    @IBAction func onBallerTapped(_ sender: Any) {
        selectLevel(level: Player.LEVEL_BALLER)
    }
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "finalVCSegue", sender: self)
    }
    
//views ==============
    func selectLevel(level:String){
        player.level=level
        finishBtn.isEnabled = true
    }
    func handleBgColor(){
        if nil != player {
            if player.desiredLeague == Player.LEAGUE_MEN{
                coloredLayer.backgroundColor = UIColor.green
                coloredLayer.alpha = CGFloat(0.3)
            }
            else if player.desiredLeague == Player.LEAGUE_WOMEN{
                coloredLayer.backgroundColor = UIColor.orange
                coloredLayer.alpha = CGFloat(0.3)
            }
            else {
                coloredLayer.backgroundColor = UIColor.purple
                coloredLayer.alpha = CGFloat(0.3)
            }
        }
    }

}
