//
//  Todo.swift
//  VoiceMemo
//
//  Created by 영현 on 4/25/24.
//

import Foundation

struct Todo: Hashable {
    var title: String
    var time: Date
    var day: Date
    var selected: Bool
    
    var convertedDayAndTime: String {
        // 오늘 - 오후 03:30에 알림
        String("\(day.formattedDay) - \(time.formattedTime)에 알림")
    }
}
