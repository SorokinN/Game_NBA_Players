//
//  PlayersViewController.swift
//  Game_NBA_Players
//
//  Created by Nikolay Sorokin on 9.11.20.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        cell.textLabel?.text = "Player \(indexPath.row)"
        return cell
    }
    
}
