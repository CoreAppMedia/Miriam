//
//  HomePrueba.swift
//  ProyectoVerde
//
//  Created by Oscar Valdes on 08/11/23.
//

import SwiftUI
import Firebase

struct HomePrueba: View {
    @AppStorage("status") var logged = false
    var body: some View {
        VStack(spacing: 15){
            Text("Usuario activo: \(Auth.auth().currentUser?.email ?? "")")
            Text("ID del Usuario: \(Auth.auth().currentUser?.uid ?? "")")
            
            Button(action: {
                try! Auth.auth().signOut()
                withAnimation{logged = false}
            }, label: {
                Text("Salir")
                    .fontWeight(.heavy)
            })
        }
    }
}

#Preview {
    HomePrueba()
}
