//
//  FloatingTabBar.swift
//  Floating TabBar Demo
//
//  Created by Ender Ismail  on 02.08.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct FloatingTabBar : View {
    
    @Binding var selected : Int
    @State var expand = false
    
    var body : some View{
        
        HStack{
            
            Spacer(minLength: 0)
            
            HStack{
                
                if !self.expand {
                    
                    Button(action: { self.expand.toggle() }) {
                        
                        Image("arrow").foregroundColor(.black).padding()
                    }
                }
                else{
                    
                    Button(action: { self.selected = 0 }) {
                        
                        Image("gameController").foregroundColor(self.selected == 0 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 15)
                    
                    Button(action: { self.selected = 1 }) {
                        
                        Image("beach").foregroundColor(self.selected == 1 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 15)
                    
                    Button(action: { self.selected = 2 }) {
                        
                        Image("burger").foregroundColor(self.selected == 2 ? .black : .gray).padding(.horizontal)
                    }
                }
                
                
            }.padding(.vertical,self.expand ? 20 : 8)
            .padding(.horizontal,self.expand ? 35 : 8)
            .background(Color.white)
            .clipShape(Capsule())
            .padding(22)
            .onLongPressGesture {
                    
                    self.expand.toggle()
            }
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
        }
        

    }
}

