//
//  Splash.swift
//  Sources
//
//  Created by Rawan on 18/06/1444 AH.
//

import Foundation
//
//  Splash.swift
//  ChefApp
//
//  Created by Afnan on 18/05/1444 AH.
//

import SwiftUI

struct Splash: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
//            x()
            ContentView()
        } else {
            ZStack{
                Color("Background").edgesIgnoringSafeArea(.all)
            VStack {
                
                VStack {
                    
                    Image("logo")
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.4
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
            }
           
            
        }
    }

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
