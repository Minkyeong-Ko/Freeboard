//
//  Keys.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/24.
//

import Foundation
import SwiftUI

struct Key: Identifiable {
    let id = UUID()
    let name: String
    let w: CGFloat
    let h: CGFloat
    let isImage: Bool
    var coord: CGPoint
    let fingerNum: Int
    let isLeftHand: Bool
    let color: Color
}

let alphabetWRatio: CGFloat = 82/(1194*1.2)
let alphabetHeight: CGFloat = 75/(1194*1.2)
let tabWRatio: CGFloat = 105/(1194*1.2)
let backspaceWRatio: CGFloat = 109/(1194*1.2)
let capslockWRatio: CGFloat = 140/(1194*1.2)
let enterWRatio: CGFloat = 168/(1194*1.2)
let leftShiftWRatio: CGFloat = 182/(1194*1.2)
let rightShiftWRatio: CGFloat = 125/(1194*1.2)
let spacebarWRatio: CGFloat = 607/(1194*1.2)

let screenSize = UIScreen.main.bounds.size
let screenWidth = screenSize.width
let screenHeight = screenSize.height

let alphabetWidth: CGFloat = (screenWidth - 80) * alphabetWRatio
let tabWidth: CGFloat = (screenWidth - 80) * tabWRatio
let backspaceWidth: CGFloat = (screenWidth - 80) * backspaceWRatio
let capslockWidth: CGFloat = (screenWidth - 80) * capslockWRatio
let enterWidth: CGFloat = (screenWidth - 80) * enterWRatio
let leftShiftWidth: CGFloat = (screenWidth - 80) * leftShiftWRatio

let rightShiftWidth: CGFloat = (screenWidth - 80) * rightShiftWRatio
let spacebarWidth: CGFloat = (screenWidth - 80) * spacebarWRatio
let keyHeight: CGFloat = (screenWidth - 80) * alphabetHeight

let horizontalGap: CGFloat = 0

let firstLineGap: CGFloat = (screenWidth - 80 - alphabetWidth*10 - tabWidth - backspaceWidth)/11
let secondLineGap: CGFloat = (screenWidth - 80 - alphabetWidth*9 - capslockWidth - enterWidth)/10
let thirdLineGap: CGFloat = (screenWidth - 80 - alphabetWidth*9 - leftShiftWidth - rightShiftWidth)/10
let lastLineGap: CGFloat = (screenWidth - 80 - spacebarWidth)/2


let firstLineXCoords: [CGFloat] = [
    horizontalGap + tabWidth/2,
    horizontalGap + firstLineGap + tabWidth + alphabetWidth/2,
    horizontalGap + firstLineGap*2 + tabWidth + alphabetWidth*1.5,
    horizontalGap + firstLineGap*3 + tabWidth + alphabetWidth*2.5,
    horizontalGap + firstLineGap*4 + tabWidth + alphabetWidth*3.5,
    horizontalGap + firstLineGap*5 + tabWidth + alphabetWidth*4.5,
    horizontalGap + firstLineGap*6 + tabWidth + alphabetWidth*5.5,
    horizontalGap + firstLineGap*7 + tabWidth + alphabetWidth*6.5,
    horizontalGap + firstLineGap*8 + tabWidth + alphabetWidth*7.5,
    horizontalGap + firstLineGap*9 + tabWidth + alphabetWidth*8.5,
    horizontalGap + firstLineGap*10 + tabWidth + alphabetWidth*9.5,
    horizontalGap + firstLineGap*11 + tabWidth + alphabetWidth*10 + backspaceWidth/2,
]
let secondLineXCoords: [CGFloat] = [
    horizontalGap + capslockWidth/2,
    horizontalGap + secondLineGap + capslockWidth + alphabetWidth/2,
    horizontalGap + secondLineGap*2 + capslockWidth + alphabetWidth*1.5,
    horizontalGap + secondLineGap*3 + capslockWidth + alphabetWidth*2.5,
    horizontalGap + secondLineGap*4 + capslockWidth + alphabetWidth*3.5,
    horizontalGap + secondLineGap*5 + capslockWidth + alphabetWidth*4.5,
    horizontalGap + secondLineGap*6 + capslockWidth + alphabetWidth*5.5,
    horizontalGap + secondLineGap*7 + capslockWidth + alphabetWidth*6.5,
    horizontalGap + secondLineGap*8 + capslockWidth + alphabetWidth*7.5,
    horizontalGap + secondLineGap*9 + capslockWidth + alphabetWidth*8.5,
    horizontalGap + secondLineGap*10 + capslockWidth + alphabetWidth*9 + enterWidth/2,
]
let thirdLineXCoords: [CGFloat] = [
    horizontalGap + leftShiftWidth/2,
    horizontalGap + thirdLineGap + leftShiftWidth + alphabetWidth/2,
    horizontalGap + thirdLineGap*2 + leftShiftWidth + alphabetWidth*1.5,
    horizontalGap + thirdLineGap*3 + leftShiftWidth + alphabetWidth*2.5,
    horizontalGap + thirdLineGap*4 + leftShiftWidth + alphabetWidth*3.5,
    horizontalGap + thirdLineGap*5 + leftShiftWidth + alphabetWidth*4.5,
    horizontalGap + thirdLineGap*6 + leftShiftWidth + alphabetWidth*5.5,
    horizontalGap + thirdLineGap*7 + leftShiftWidth + alphabetWidth*6.5,
    horizontalGap + thirdLineGap*8 + leftShiftWidth + alphabetWidth*7.5,
    horizontalGap + thirdLineGap*9 + leftShiftWidth + alphabetWidth*8.5,
    horizontalGap + thirdLineGap*10 + leftShiftWidth + alphabetWidth*9 + rightShiftWidth/2,
]

let basicBottomPosition: CGFloat = screenHeight - 60

func getYCoord(num: CGFloat) -> CGFloat {
    let yPosition = basicBottomPosition - ((num+1)*keyHeight) - (firstLineGap*(num-1))
    return yPosition
}

class Keys: ObservableObject {
    @Published var keys = [
        Key(name: "tab", w: tabWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[0], y: getYCoord(num: 4)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "q", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[1], y: getYCoord(num: 4)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "w", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[2], y: getYCoord(num: 4)), fingerNum: 2, isLeftHand: true, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "e", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[3], y: getYCoord(num: 4)), fingerNum: 3, isLeftHand: true, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: "r", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[4], y: getYCoord(num: 4)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "t", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[5], y: getYCoord(num: 4)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "y", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[6], y: getYCoord(num: 4)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "u", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[7], y: getYCoord(num: 4)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "i", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[8], y: getYCoord(num: 4)), fingerNum: 3, isLeftHand: false, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: "o", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[9], y: getYCoord(num: 4)), fingerNum: 2, isLeftHand: false, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "p", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: firstLineXCoords[10], y: getYCoord(num: 4)), fingerNum: 1, isLeftHand: false, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "delete.backward", w: backspaceWRatio, h: alphabetHeight, isImage: true, coord: CGPoint(x: firstLineXCoords[11], y: getYCoord(num: 4)), fingerNum: 1, isLeftHand: false, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "", w: capslockWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[0], y: getYCoord(num: 3)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "a", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[1], y: getYCoord(num: 3)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "s", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[2], y: getYCoord(num: 3)), fingerNum: 2, isLeftHand: true, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "d", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[3], y: getYCoord(num: 3)), fingerNum: 3, isLeftHand: true, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: "f", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[4], y: getYCoord(num: 3)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "g", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[5], y: getYCoord(num: 3)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "h", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[6], y: getYCoord(num: 3)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "j", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[7], y: getYCoord(num: 3)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "k", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[8], y: getYCoord(num: 3)), fingerNum: 3, isLeftHand: false, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: "l", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: secondLineXCoords[9], y: getYCoord(num: 3)), fingerNum: 2, isLeftHand: false, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "return", w: enterWRatio, h: alphabetHeight, isImage: true, coord: CGPoint(x: secondLineXCoords[10], y: getYCoord(num: 3)), fingerNum: 1, isLeftHand: false, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "", w: leftShiftWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[0], y: getYCoord(num: 2)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "z", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[1], y: getYCoord(num: 2)), fingerNum: 1, isLeftHand: true, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "x", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[2], y: getYCoord(num: 2)), fingerNum: 2, isLeftHand: true, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "c", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[3], y: getYCoord(num: 2)), fingerNum: 3, isLeftHand: true, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: "v", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[4], y: getYCoord(num: 2)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "b", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[5], y: getYCoord(num: 2)), fingerNum: 4, isLeftHand: true, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "n", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[6], y: getYCoord(num: 2)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: "m", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[7], y: getYCoord(num: 2)), fingerNum: 4, isLeftHand: false, color: Color(red: 219/255, green: 251/255, blue: 220/255)),
        Key(name: ",", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[8], y: getYCoord(num: 2)), fingerNum: 3, isLeftHand: false, color: Color(red: 255/255, green: 251/255, blue: 212/255)),
        Key(name: ".", w: alphabetWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[9], y: getYCoord(num: 2)), fingerNum: 2, isLeftHand: false, color: Color(red: 255/255, green: 236/255, blue: 222/255)),
        Key(name: "", w: rightShiftWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: thirdLineXCoords[10], y: getYCoord(num: 2)), fingerNum: 1, isLeftHand: false, color: Color(red: 255/255, green: 242/255, blue: 242/255)),
        Key(name: "space bar", w: spacebarWRatio, h: alphabetHeight, isImage: false, coord: CGPoint(x: lastLineGap + spacebarWidth/2, y: getYCoord(num: 1)), fingerNum: 5, isLeftHand: false, color: Color(red: 226/255, green: 231/255, blue: 255/255)),
    ]
}
