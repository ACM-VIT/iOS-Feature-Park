//
//  FrameworkModel.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import Foundation

enum FrameworkModel: String, CaseIterable {
    case uiKit = "UIKit"
    case safariServices = "SafariServices"
    case mapKit = "MapKit"
    case sceneKit = "SceneKit"
    case swiftUI = "SwiftUI"
    case unknowned = "Framework"
    
    var name: String {
        return self.rawValue
    }
    
    var description: String {
        switch self {
        case .uiKit:
            return "Provides view architecture for implementing interface."
        case .safariServices:
            return "Integrates Safari behaviors into app."
        case .mapKit:
            return "Embeds maps directly app windows and views."
        case .sceneKit:
            return "Combines 3D content using high-level scene descriptions."
        case .swiftUI:
            return "Builds UI with a declarative Swift syntax."
        case .unknowned:
            return "Framework not defined."
        }
    }
}
