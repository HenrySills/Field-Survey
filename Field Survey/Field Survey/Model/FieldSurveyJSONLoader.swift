//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Henry Sills on 7/18/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation

class FieldSurveysLoader {
    
    class func load(jsonFileName: String) -> FieldSurveys? {
        var fieldSurveys: FieldSurveys?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldSurveys = try? jsonDecoder.decode(FieldSurveys.self, from: jsonData)
        }
        
        return fieldSurveys
    }
}


/*
 
 Tried this from video, could not get it to work
 
 class FieldSurveyJSONLoader {
 
 class func load(fileName: String) -> [FieldSurvey] {
 var surveys = [FieldSurvey]()
 
 if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
 let date = try? Data(contentsOf: URL(fileURLWithPath: path)) {
 surveys = FieldSurveyJSONParser.parse(Data)
 }
 
 return surveys
 }
 }

 */
