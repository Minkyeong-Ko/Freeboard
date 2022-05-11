//
//  FirstView.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink(destination: IntroductionView()) {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.black)
                            Text("Start")
                                .foregroundColor(.white)
                        }
                    }
                }
                Spacer()
            }
            
            VStack {
                HStack {
                    Text("Freeboard")
                        .font(.system(size: 60))
                    Spacer()
                }
                HStack {
                    Text("is an app that helps you freely create a keyboard that fits your hand shape")
                        .font(.system(size: 55))
                        .foregroundColor(.gray)
                    Spacer()
                }
                Spacer()
            }
        }
        .navigationTitle(Text("Freeboard"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .padding(40)
    }
}
