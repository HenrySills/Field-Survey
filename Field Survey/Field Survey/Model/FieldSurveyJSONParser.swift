//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Henry Sills on 7/18/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//


/*
import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Date) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let surveys = root["surveys"] as? [Any] {
                for survey in surveys {
                    if let survey = survey as? [String: String] {
                        if let classificationName = survey["Classification"],
                           let title = survey["title"],
                           let matchup = survey["matchup"],
                           let dateString = survey["date"],
                        let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldSurvey = FieldSurvey(classification: classification, matchup: matchup, date: date) {
                                fieldSurveys.append(fieldSurvey)
                            }
                        }
                    }
                }
            }
        }
        return fieldSurveys
    }
}

 */
