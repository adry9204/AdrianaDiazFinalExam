//
//  Model.swift
//  AdrianaDiazFinalExam
//
//  Created by Adriana Diaz Torres on 12/16/22.
//

import Foundation

struct BMIEntry {
    var weight: Double
    var bmi: String
    var date: String
    
    init(weight: Double, bmi: String, date: String) {
        self.weight = weight
        self.bmi = bmi
        self.date = date
    }
}
