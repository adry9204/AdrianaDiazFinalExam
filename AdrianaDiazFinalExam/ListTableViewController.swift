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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 33
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        for bmi in bmiInfo {
            cell.textLabel?.text = bmi.getString()
        }
        
        return cell
    }

}
