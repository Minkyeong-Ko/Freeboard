//
//  WriteTextView.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/23.
//

import SwiftUI
import UIKit

extension String {
    
    func numberOfLines() -> Int {
        return self.numberOfOccurrencesOf(string: "\n") + 1
    }

    func numberOfOccurrencesOf(string: String) -> Int {
        return self.components(separatedBy:string).count - 1
    }
}

struct WriteTextView: View {
    @Binding var allKeys: [Key]
    @Binding var testInput: String
    @State var allInput: String = ""
    @State private var showingAlert: Bool = false
    
    let screenSize = UIScreen.main.bounds.size
    
    func resetTexts() {
        allInput = ""
    }
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        UIPasteboard.general.string = allInput
                        showingAlert = true
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.black)
                            Text("Copy")
                                .foregroundColor(.white)
                        }
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Copy"), message: Text("Copied to clipboard"), dismissButton: .default(Text("Ok")))
                    }
                }
                Spacer()
            }
            VStack {
                VStack {
                    Text(allInput)
                        .font(.system(size: 30))
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(height: screenSize.height * 0.4)
                        .multilineTextAlignment(.center)
                        .padding(.top, CGFloat(allInput.numberOfLines()) * -20)
                }
                Spacer()
            }
            
            HStack {
                Spacer()
                Button(action: {
                    resetTexts()
                }) {
                    Text("reset")
                        .padding(.bottom, 40)
                }
            }
            ForEach($allKeys) { $eachKey in
                KeyBtn(keyName: eachKey.name, width: screenSize.width * eachKey.w,  height: screenSize.width * eachKey.h, isImage: eachKey.isImage, coordinate: eachKey.coord, input: $testInput, allInput: $allInput)
                    .position(x: eachKey.coord.x, y: eachKey.coord.y)
            }
        }
        .navigationTitle(Text("Write and Copy your Text"))
        .navigationBarTitleDisplayMode(.inline)
        .padding(40)
    }
}
