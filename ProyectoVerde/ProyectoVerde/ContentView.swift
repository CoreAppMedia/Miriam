//
//  ContentView.swift
//  ProyectoVerde
//
//  Created by Oscar Valdes on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("status") var logged = false

    var body: some View {
        NavigationView{
            if logged{
                Calendario()
                    .navigationBarHidden(false)
                    .preferredColorScheme(.light)
            }else{
                Login()
                    .preferredColorScheme(.dark)
                    .navigationBarHidden(true)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
