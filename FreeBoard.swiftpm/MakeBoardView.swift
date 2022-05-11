//
//  MakeBoardView.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/24.
//

import SwiftUI

struct MakeBoardView: View {
    let screenSize = UIScreen.main.bounds.size
    @State var allKeys = Keys().keys
    @State var isFinished: Bool = false
    @State var testInput: String = "Press and test keys!"
    @State var allInput: String = ""
    
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack {
                        Toggle("Testing Mode", isOn: $isFinished)
                            .padding(20)
                            .background(Color(red: 245/255, green: 245/255, blue: 245/255))
                            .cornerRadius(15)
                        Spacer()
                        NavigationLink(destination: WriteTextView(allKeys: $allKeys, testInput: $testInput)) {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.black)
                                Text("Next")
                                    .foregroundColor(.white)
                            }
                            .padding(.leading, 20)
                        }
                    }
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            if isFinished {
                                Text(testInput == "delete.backward" ? "delete" : testInput)
                                    .font(.system(size: 30))
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        
                    }
                    Spacer()
                }
            }
            
            if isFinished {
                ForEach($allKeys) { $eachKey in
                    KeyBtn(keyName: eachKey.name, width: screenSize.width * eachKey.w,  height: screenSize.width * eachKey.h, isImage: eachKey.isImage, coordinate: eachKey.coord, input: $testInput, allInput: $allInput)
                        .position(x: eachKey.coord.x, y: eachKey.coord.y)
                        .gesture(
                            DragGesture()
                                .onChanged({value in
                                    eachKey.coord = value.location
                                })
                        )
                }
            } else {
                ForEach($allKeys) { $eachKey in
                    KeyCont(keyName: eachKey.name, width: screenSize.width * eachKey.w,  height: screenSize.width * eachKey.h, isImage: eachKey.isImage, coordinate: eachKey.coord, color: eachKey.color)
                        .position(x: eachKey.coord.x, y: eachKey.coord.y)
                        .gesture(
                            DragGesture()
                                .onChanged({value in
                                    eachKey.coord = value.location
                                })
                        )
                }
            }
        }
        .navigationTitle(Text(isFinished ? "Press and test the keys!" : "Drag and position the keys!"))
        .navigationBarTitleDisplayMode(.inline)
        .padding(40)
    }
}
