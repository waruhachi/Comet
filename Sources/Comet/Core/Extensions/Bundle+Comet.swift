//
//  Bundle+Comet.swift
//  Comet
//
//  Created by Noah Little on 12/4/2023.
//

import Foundation

internal extension Bundle {
    static var comet: Bundle {
        Bundle(path: jbroot("/Library/Frameworks/Comet.framework/Bundle.bundle/"))!
    }
}
