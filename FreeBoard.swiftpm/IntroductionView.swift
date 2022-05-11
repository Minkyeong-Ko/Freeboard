//
//  IntroductionView.swift
//  FreeBoard
//
//  Created by Minkyeong Ko on 2022/04/23.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: MakeBoardView()) {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.black)
                                Text("Next")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Spacer()
                }
                VStack {
                    Text("For a better experience, I recommend..")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding(.bottom, 30)
                        
                    Text("✓ Landscape mode")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                    Text("✓ Full Screen mode")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(50)
                .background(.black)
                .cornerRadius(20)
            }
        }
        .navigationTitle(Text("Introduction"))
        .navigationBarTitleDisplayMode(.inline)
        .padding(40)
    }
}
