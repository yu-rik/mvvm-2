//
//  TableTableViewController.swift
//  mvvm-2
//
//  Created by yurik on 8/18/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {

    //свойство типа Profile
    var profiles: [Profile]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //заполнение массива Profile
        profiles = [
            Profile(name: "Yurik", secondName: "Nosachenko", age: 36),
            Profile(name: "Mark", secondName: "Nosachenko", age: 1),
            Profile(name: "Yulia", secondName: "Didenko", age: 26)
        ]

    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // возвращение нужного количества секций(удалив метод- вернет одну)
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
       //извлечение ячейки
        guard let viewCell = cell else {return UITableViewCell()}
        
        // для наполнения ячейки
        let profile = profiles[indexPath.row]

        //наполнение ячейки
        viewCell.ageLabel.text = "\(profile.age)"
        viewCell.fullNameLabel.text = profile.name + " " + profile.secondName
        return viewCell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
