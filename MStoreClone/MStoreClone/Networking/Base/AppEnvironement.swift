//
//  AppEnvironement.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 01/07/2021.
//

import Foundation

enum AppEnvironement {
    case production
    case development
}

extension AppEnvironement {
    static var currentState: AppEnvironement {
        return .development
    }
}

extension AppEnvironement {
    static var baseURL: URL {
        switch AppEnvironement.currentState {
        case .production:
            return URL(string: Servers.production)!
        case .development:
            return URL(string: Servers.development)!
        }
    }
}

//extension AppEnvironement {
//    static var showLog: Bool {
//        switch AppEnvironement.currentState {
//        case .production:
//            return false
//        case .development:
//            return true
//        }
//    }
//}
