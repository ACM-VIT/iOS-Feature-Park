//
//  Datasource.swift
//  Hacktoberfest-iOS
//
//  Created by Aaryan Kothari on 05/10/20.
//

import Foundation

enum Datasource {
    static let contributors : [ContributorModel] = [
        .init(name: "Aaryan Kothari", social: [.github(url: "https://github.com/aaryankotharii"),
                                               .LinkedIn(url: "https://linkedin.com/in/aaryankotharii"),
                                               .mail(url: "")]),
        .init(name: "Swamita Gupta", social: [.github(url: "https://github.com/swamitagupta"),
                                              .LinkedIn(url: "https://linkedin.com/in/swamita-gupta"),
                                              .mail(url: "")]),
        .init(name: "Niklas Oemler", social: [.github(url: "https://github.com/NiklasOemler"),
                                              .twitter(url: "https://twitter.com/NiklasOemler"),
                                              .mail(url: "")]),
        .init(name: "Marian Koenig", social: [.github(url: "https://github.com/mariankoenig"),
                                              .twitter(url: "https://twitter.com/marianko3nig"),
                                              .mail(url: "mail@mariankoenig.com")])
    ]
    
    static let frameworks: [FrameworkModel] = FrameworkModel.allCases
}
