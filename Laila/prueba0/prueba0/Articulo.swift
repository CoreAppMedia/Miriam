//
//  Articulo.swift
//  prueba0
//
//  Created by user237160 on 10/29/23.
//

import SwiftUI

struct Articulo: View {
    // Variables
    var nota: Nota
    var body: some View {
        HStack{
            nota.imagen
                .resizable()
                .frame(width: 70, height: 70)
            VStack(alignment: .leading){
                Text(nota.name)
                    .font(.title2)
                //Text(nota.description)
                
            }
        }
        
    }
}

struct Articulo_Previews: PreviewProvider {
    static var previews: some View {
    Articulo(nota:
                Nota(id: 1,
                     name: "Laila",
                     //description: "Animales en peligro de extincion",
                     imagen: Image("imagen1")
                    ))
                    .previewLayout(
                        .fixed(width: .infinity, height: 400
                              ))
        
    }
}

