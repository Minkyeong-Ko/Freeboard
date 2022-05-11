//
//  KeyCont.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/24.
//

import SwiftUI

struct KeyCont: View {
    let keyName: String
    let width: CGFloat
    let height: CGFloat
    let isImage: Bool
    let coordinate: CGPoint
    let color: Color
    
    var body: some View {
        if isImage {
            VStack {
                Image(systemName: keyName)
            }
            .frame(width: width, height: height, alignment: .center)
            .background(color)
            .foregroundColor(Color(red: 80/255, green: 80/255, blue: 80/255))
            .cornerRadius(10)
        }
        else {
            Text(keyName)
                .frame(width: width, height: height, alignment: .center)
                .background(color)
                .foregroundColor(Color(red: 80/255, green: 80/255, blue: 80/255))
                .cornerRadius(10)
        }
    }
}

