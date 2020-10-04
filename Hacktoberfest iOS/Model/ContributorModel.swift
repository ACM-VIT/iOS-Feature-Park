//
//  ContributorModel.swift
//  Hacktoberfest-iOS
//
//  Created by Aaryan Kothari on 05/10/20.
//

import Foundation

struct ContributorModel {
    let name : String
    let socialHandles : [socialMedia]
    
    init(name: String, social: [socialMedia]){
        self.name = name
        self.socialHandles = social
    }
}

enum socialMedia {
    case github(url: String?)
    case LinkedIn(url: String?)
    case instagram(url: String?)
    case mail(url: String?)
    case twitter(url: String?)
    case dribble(url: String?)
    
    var imageName : String {
        switch self {
        case .github(_):
            return "github"
        case .LinkedIn(_):
            return "LinkedIn"
        case .instagram(_):
            return "instagram"
        case .mail(_):
            return "mail"
        case .twitter(_):
            return "twitter"
        case .dribble(_):
            return "dribble"
        }
    }
    
    var urlString : String? {
        switch self {
        case .github(let url):
            return url
        case .LinkedIn(let url):
            return url
        case .instagram(let url):
            return url
        case .mail(let url):
            return url
        case .twitter(let url):
            return url
        case .dribble(let url):
            return url
        }
    }
}
