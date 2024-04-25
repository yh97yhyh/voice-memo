//
//  PathType.swift
//  VoiceMemo
//
//  Created by 영현 on 4/25/24.
//

import Foundation

enum PathType: Hashable {
    case homeView
    case todoView
    case memoView(isCreatedMode: Bool, memo: Memo?)
}
