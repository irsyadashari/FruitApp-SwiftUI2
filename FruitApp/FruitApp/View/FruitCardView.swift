//
//  FruitCardView.swift
//  FruitApp
//
//  Created by Irsyad Ashari on 27/05/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color:
                                Color(
                                    red: 0,
                                    green: 0,
                                    blue: 0,
                                    opacity: 0.15),
                            radius: 8, x: 6, y: 8 )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color:
                                Color(
                                    red: 0,
                                    green: 0,
                                    blue: 0,
                                    opacity: 0.15),
                            radius: 2, x: 2, y: 2 )
                
                // FRUIT: HEADLINE
                Text("Blueberries are sweet, nitritious and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                   
                
                // BUTTON: START
                StartButtonView()
                
            }  //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center)
        .background(
            LinearGradient(
                gradient: Gradient(
                colors: [Color("ColorBlueBerryLight"),       Color("ColorBlueBerryDark")]),
                startPoint: .top,
                endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
