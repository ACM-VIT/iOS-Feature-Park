//
//  Datasource.swift
//  Hacktoberfest-iOS
//
//  Created by Aaryan Kothari on 05/10/20.
//

import Foundation

struct Datasource {
    static let contributors : [ContributorModel] = [
        .init(name: "Aaryan Kothari", social: [.github(url: "https://github.com/aaryankotharii"),.LinkedIn(url: ""),.mail(url: "www.linkedin.com/in/aaryankotharii")]),
        .init(name: "Aaryan Kothari", social: [.github(url: "https://github.com/aaryankotharii"),.LinkedIn(url: ""),.mail(url: "www.linkedin.com/in/aaryankotharii")])
    ]
    
    static let frameworks: [FrameworkModel] = [
        .init(name: "UIKit", description: "The UIKit framework provides the window and view architecture for implementing the interface of your app."),
        .init(name: "SafariServices", description: "Safari Services integrates Safari behaviors into your iOS or macOS app.")
    ]
}
