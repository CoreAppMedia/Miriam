//
//  Home.swift
//  MenuLateral
//
//  Created by mac20@ioslabacatlan.appleid.com on 15/10/23.
//

import SwiftUI

struct Home: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack{
            VStack(spacing: 0){
                HStack{
                    Button{
                        withAnimation{showMenu.toggle()}
                    }label: {
                        Image("optimus")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    }
                    Spacer()
                    //Navigation Link
                    NavigationLink{
                        Text("LInea")
                            .navigationTitle("LInea 1")
                    }label: {
                        Image(systemName: "star.circle.fill")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22,height: 22)
                            .foregroundColor(.primary)
                    }
      
                }//HStack
                .padding(.horizontal)
                .padding(.vertical, 10)
                Divider()
                
            }//VStack
            .overlay(
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25,height: 25)
            )
            Spacer()
        }//VStack
    }
}

#Preview {
    ContentView()
}
