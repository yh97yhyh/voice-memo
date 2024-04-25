//
//  MemoViewModel.swift
//  VoiceMemo
//
//  Created by 영현 on 4/26/24.
//

import Foundation

class MemoViewModel: ObservableObject {
    @Published var memo: Memo
    
    init(memo: Memo) {
        self.memo = memo
    }
}
