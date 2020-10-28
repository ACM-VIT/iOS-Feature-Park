//
//  FrameworkModel.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import Foundation

enum FrameworkModel: CaseIterable {
    case uiKit
    case safariServices
    case mapKit
    case sceneKit
    case swiftUI
    
    var name: String {
        switch self {
        case .uiKit:
            return "UIKit"
        case .safariServices:
            return "SafariServices"
        case .mapKit:
            return "MapKit"
        case .sceneKit:
            return "SceneKit"
        case .swiftUI:
            return "SwiftUI"
        }
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
        }
    }
}
