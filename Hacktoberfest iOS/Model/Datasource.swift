//
//  Datasource.swift
//  Hacktoberfest-iOS
//
//  Created by Aaryan Kothari on 05/10/20.
//

import Foundation

struct Datasource {
    static let contributors : [ContributorModel] = [
        .init(name: "Aaryan Kothari", social: [.github(url: "https://github.com/aaryankotharii"),.LinkedIn(url: "https://linkedin.com/in/aaryankotharii"),.mail(url: "")]),
        .init(name: "Swamita Gupta", social: [.github(url: "https://github.com/swamitagupta"),.LinkedIn(url: "https://linkedin.com/in/swamita-gupta"),.mail(url: "")])
    ]
    
    static let frameworks: [FrameworkModel] = [
        .init(name: "UIKit", description: "Provides view architecture for implementing interface."),
        .init(name: "SafariServices", description: "Integrates Safari behaviors into app."),
        .init(name: "MapKit", description: "Embeds maps directly app windows and views."),
        .init(name: "SceneKit", description: "Combines 3D content using high-level scene descriptions."),
        .init(name: "SwiftUI", description: "Builds UI with a declarative Swift syntax.")
    ]
}
