//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by russell gadsden on 3/4/23.
//

import UIKit

class PlanetListViewController: UITableViewController {

    let planetController = PlanetController()

    // MARK: - UITableViewDataSource/Delegate

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.planetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = self.planetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        return cell
    }
    
    //MARK: Navigation 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPlanetDetail" {
            
            if let detailViewController = segue.destination as? PlanetDetailViewController, let selectedIndex = (self.tableView.indexPathForSelectedRow as NSIndexPath?)?.row {
                
                let planet = self.planetController.planets[selectedIndex]
                detailViewController.planet = planet
            }
        }
    }

}
