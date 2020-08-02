//
//  ScrolledCardView.swift
//  Floating TabBar Demo
//
//  Created by Ender Ismail on 02.08.20.
//  Copyright © 2020 Ender Ismail. All rights reserved.
//

import SwiftUI

struct ScrolledCardView: View {
    
    var imgCharId: String = "g"
    var scrollViewLength: Int = 6
    
    var body: some View {
        
        VStack(spacing: 15){
            
            ForEach(1...scrollViewLength,id: \.self){ imageIndex in
                
                Image("\(self.imgCharId)\(imageIndex)").resizable().frame(height: 250).cornerRadius(15)
            }
        }
    }
}

struct ScrolledCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrolledCardView(imgCharId: "g", scrollViewLength: 6)
    }
}
