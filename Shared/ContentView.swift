//
//  ContentView.swift
//  Shared
//
//  Created by Hubert Kubot on 26/10/2022.
//

import SwiftUI
var obrazy = ["apple", "star", "cherry"]

struct ContentView: View {
    @State public var a = obrazy.randomElement()
    @State public var b = obrazy.randomElement()
    @State public var c = obrazy.randomElement()
    @State public var score: Int = 0
    
    
    
    
    
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            VStack{
                Spacer()
                Text("HAZARD")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Spacer()
                    Image(String(b!))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(String(a!))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(String(c!))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                        }
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                
                
                
                
                
                
                Button {
                    if (a == b) && (a == c) {
                        score += 1
                        
                    }
                    
                     a = obrazy.randomElement()
                    b = obrazy.randomElement()
                     c = obrazy.randomElement()
                  
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()

                
     
            }
                
        }
    }
}

















































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

