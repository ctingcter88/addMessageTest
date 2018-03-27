//
//  AppCellTableViewController.swift
//  addMessageTest
//
//  Created by Gareth Miller on 27/03/2018.
//  Copyright © 2018 Gareth Miller. All rights reserved.
//

import UIKit

class AppCellTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var apps = [App]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data
        loadSampleApps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should ne dequeued using a cell identifier.
        let cellIdentifier = "AppCellTableViewCell"
        // let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                       for: indexPath) as? AppCellTableViewCell else {
                                                        fatalError("The dequeued cell is not an instance of AppCellTableViewCell.")
        }
        
        // Fetches the appropriate app for the data source layout.
        let app = apps[indexPath.row]
        
        cell.nameLabel.text = app.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        
        guard let appCellDetailViewController = segue.destination as? ViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let selectedAppCell = sender as? AppCellTableViewCell else {
            fatalError("Unexpected sender: \(String(describing: sender))")
        }
        
        guard let indexPath = tableView.indexPath(for: selectedAppCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let selectedApp = apps[indexPath.row]
        appCellDetailViewController.app = selectedApp
    }
 
    //MARK: private methods
    
    private func loadSampleApps() {
        guard let app1 = App(name: "DOG") else {
            fatalError("Unable to instantiate app1")
        }
        
        guard let app2 = App(name: "Gateway") else {
            fatalError("Unable to instantiate app2")
        }
        
        guard let app3 = App(name: "F5") else {
            fatalError("Unable to instantiate app3")
        }
     apps += [app1, app2, app3]
    
    }
}
