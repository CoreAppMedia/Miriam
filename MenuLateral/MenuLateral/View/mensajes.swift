//
//  mensajes.swift
//  MenuLateral
//
//  Created by mac20@ioslabacatlan.appleid.com on 15/10/23.
//

import SwiftUI

struct mensajes: View {
    @Binding var showMenu: Bool
    var body: some View {
            VStack{

                NavigationLink{
                    Text("Hola master")
                } label: {
                    Image(systemName: "person.crop.square.fill").font(.system(size: 30, weight: .bold))
                    Text("Test                ")
                }.fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.vertical,12)
                    .padding(.horizontal,20)
                    .background(.white)
                    .cornerRadius(15)
                
            }//VStack

    }
}

#Preview {
    ContentView()
}
