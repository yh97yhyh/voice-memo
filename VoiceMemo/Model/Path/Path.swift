//
//  Path.swift
//  VoiceMemo
//
//  Created by 영현 on 4/25/24.
//

import Foundation

class PathModel: ObservableObject {
    @Published var paths: [PathType]
    
    init(paths: [PathType] = []) {
        self.paths = paths
    }
}
