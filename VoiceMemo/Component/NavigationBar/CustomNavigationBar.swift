//
//  CustomNavigationBar.swift
//  VoiceMemo
//
//  Created by 영현 on 4/25/24.
//

import SwiftUI

struct CustomNavigationBar: View {
    let isDisplayLeftBtn: Bool
    let isDisplayRightBtn: Bool
    let leftBynAction: () -> Void
    let rightBtnAction: () -> Void
    let rightBtnType: NavigationBtnType
    
    init(isDisplayLeftBtn: Bool = true,
         isDisplayRightBtn: Bool  = true,
         leftBynAction: @escaping () -> Void = {},
         rightBtnAction: @escaping () -> Void = {},
         rightBtnType: NavigationBtnType = .edit) {
        self.isDisplayLeftBtn = isDisplayLeftBtn
        self.isDisplayRightBtn = isDisplayRightBtn
        self.leftBynAction = leftBynAction
        self.rightBtnAction = rightBtnAction
        self.rightBtnType = rightBtnType
    }
    
    var body: some View {
        HStack {
            if isDisplayLeftBtn {
                Button {
                    leftBynAction()
                } label: {
                    Image("leftArrow")
                }
            }
            
            Spacer()
            
            if isDisplayRightBtn {
                Button {
                    rightBtnAction()
                } label: {
                    if rightBtnType == .close {
                        Image("close")
                    } else {
                        Text(rightBtnType.rawValue)
                            .foregroundColor(.customBlack)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 20)
    }
}

#Preview {
    CustomNavigationBar()
}
