//
//  ListTableViewController.swift
//  AdrianaDiazFinalExam
//
//  Created by Adriana Diaz Torres on 12/16/22.
//

import UIKit

class ListTableViewController: UITableViewController {

    
    var bmiInfo: [BMIEntry] = [
        BMIEntry(weight:200, bmi:"Obese Class I", date:"22/10/22"),
        BMIEntry(weight:190, bmi:"Obese Class I", date:"22/11/22"),
        BMIEntry(weight:180, bmi:"Overweight", date:"22/12/22"),
        BMIEntry(weight:185, bmi:"Overweight", date:"22/01/23"),
        BMIEntry(weight:175, bmi:"Overweight", date:"22/02/23"),
        BMIEntry(weight:170, bmi:"Overweight", date:"22/03/23"),
        BMIEntry(weight:150, bmi:"Normal", date:"22/04/23"),
        BMIEntry(weight:145, bmi:"Normal", date:"22/05/23"),
        BMIEntry(weight:155, bmi:"Overweight", date:"22/06/23"),
        BMIEntry(weight:140, bmi:"Normal", date:"22/07/23"),
        BMIEntry(weight:135, bmi:"Normal", date:"22/08/23"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
