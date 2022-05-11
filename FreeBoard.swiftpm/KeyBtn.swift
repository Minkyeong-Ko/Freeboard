//
//  KeyBtn.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/24.
//

import SwiftUI

struct KeyBtn: View {
    let keyName: String
    let width: CGFloat
    let height: CGFloat
    let isImage: Bool
    let coordinate: CGPoint
    let color: Color = Color(red: 243/255, green: 244/255, blue: 248/255)
    @Binding var input: String
    @Binding var allInput: String
    
    var body: some View {
        Button(action: {
            input = keyName
            switch keyName {
                case "return":
                    allInput = allInput + "\n"
                case "delete.backward":
                allInput = allInput == "" ? allInput : String(allInput[allInput.startIndex..<allInput.index(before: allInput.endIndex)])
                case "tab":
                    allInput = allInput + "        "
                case "space bar":
                    allInput = allInput + " "
                case "caps lock":
                    allInput = allInput
                default:
                    allInput = allInput + keyName
            }
            print(input)
        }) {
            KeyCont(keyName: keyName, width: width, height: height, isImage: isImage, coordinate: coordinate, color: color)
        }
    }
}
