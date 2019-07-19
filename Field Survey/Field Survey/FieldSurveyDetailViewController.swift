//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Henry Sills on 7/18/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurvey = fieldSurvey {
            matchupLabel.text = fieldSurvey.matchup
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            fieldIconImageView.image = UIImage(named: fieldSurvey.surveys.rawValue)
            
            if let date = fieldSurvey.date {
                dateLabel.text = dateFormatter.string(from: date)
            } else{
                dateLabel.text = ""
            }
    }
}

}


/*
 
 
 tried from Xcode project, couldnt get to work
 
 
class SportsEventDetailViewController: UIViewController {
    @IBOutlet weak var fieldSurveyIcon   : UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    let dateFormatter = DateFormatter()
    
    var fieldSurvey: FieldSurvey?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurvey = fieldSurvey {
            matchupLabel.text = fieldSurvey.matchup
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            fieldIconImageView.image = UIImage(named: fieldSurvey.classification.rawValue)
        }
    }
}


 */
