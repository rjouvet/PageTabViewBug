//
//  ImageStruct.swift
//  PageTabViewBug
//
//  Created by Rajiv on 18/02/2021.
//

import SwiftUI

struct ImageComponent: View {
    var name: String = "jupiter"
    
    var body: some View {
        VStack {
            Image(self.name)
                .resizable()
                .fixedSize()
                .frame(width: 200, height: 200)
                .overlay(Color.black.opacity(0.43))
                .overlay(
                    VStack{
                        Spacer()
                        Text(self.name.capitalized)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom)
                )
            
            Text("Solar System")
                .padding()
            
            Image("solarsystem")
                .resizable()
                .fixedSize()
                .frame(width: 300, height: 300)
                .padding()
        }
    }
}

struct ImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponent()
    }
}
