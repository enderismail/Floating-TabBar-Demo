//
//  ContentView.swift
//  Floating TabBar Demo
//
//  Created by Ender Ismail on 31.07.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
    
        ZStack(alignment: .bottom){
            
            VStack{
                
                if self.selected == 0{
                    
                    NavigationView{
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            ScrolledCardView(imgCharId: "g", scrollViewLength: 6)
                                .padding()
                                .navigationBarTitle("Gaming",displayMode: .inline)
                            
                        }
                        .edgesIgnoringSafeArea(.bottom)
                    }
                }
                else if self.selected == 1{
                    
                    NavigationView{
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            ScrolledCardView(imgCharId: "b", scrollViewLength: 6)
                                .padding()
                                .navigationBarTitle("Beach",displayMode: .inline)
                            
                        }
                        .edgesIgnoringSafeArea(.bottom)
                    }
                    
                }
                else{
                    
                    NavigationView{
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            ScrolledCardView(imgCharId: "bu", scrollViewLength: 6)
                                .padding()
                                .navigationBarTitle("Burger",displayMode: .inline)
                            
                        }
                        .edgesIgnoringSafeArea(.bottom)
                    }
                }
                
            }
            
            FloatingTabBar(selected: self.$selected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

