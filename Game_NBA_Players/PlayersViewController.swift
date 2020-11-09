//
//  PlayersViewController.swift
//  Game_NBA_Players
//
//  Created by Nikolay Sorokin on 9.11.20.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        cell.textLabel?.text = "Player \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let playersDetailViewController = storyboard.instantiateViewController(identifier: "PlayerDetailsViewController")
        
        navigationController?.pushViewController(playersDetailViewController, animated: true)
        
    }
}
