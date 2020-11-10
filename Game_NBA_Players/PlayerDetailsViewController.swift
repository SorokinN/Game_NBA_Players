//
//  PlayerDetailsViewController.swift
//  Game_NBA_Players
//
//  Created by Nikolay Sorokin on 10.11.20.
//

import UIKit

class PlayerDetailsViewController: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.name
        positionLabel.text = player?.position
        heightLabel.text = player?.height
        
    }

    
}
