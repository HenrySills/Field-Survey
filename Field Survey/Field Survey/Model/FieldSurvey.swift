//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Henry Sills on 7/18/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation

enum Classification: String, Codable {
        case bird
        case amphibian
        case reptile
        case insect
        case fish
        case plant
        case mammal
}

struct FieldSurvey: Codable {
    var classification: Classification
    var title: String
    var matchup: String
    var date: Date
}

struct FieldSurveys: Codable {
    var status: String
    var surveys: [FieldSurvey]
}


