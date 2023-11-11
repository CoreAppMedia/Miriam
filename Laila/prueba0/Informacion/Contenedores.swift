//
//  Contenedores.swift
//  prueba0
//
//  Created by user237160 on 11/1/23.
//

import SwiftUI

struct Contenedores: View {
    var body: some View {
        VStack(alignment: .center, spacing:15){
            Image("amarillo")
                .resizable().frame(height: 300)
            VStack(alignment: .leading){
                Text("¿Qué tirar en cada contenedor?").font(.title.bold())
               
                Text("Dentro del contenedor amarillo, debemos depositar botellas y envases de plástico, envases metálicos y briks").font(.title3)
                
                Text("En el contenedor azul hay que depositar solo papel y cajas de cartón: envases de alimentación, calzado, productos congelados, papel de envolver, papel de uso diario, etc.").font(.title3)            }.padding(15)
            
            
            Link("Seguir leyendo...",destination: URL(string:"https://www.ecoembes.com/es/reduce-reutiliza-y-recicla/que-tirar-en-cada-contenedor")!)
                 
        }.padding(0)
    }
}

struct Contenedores_Previews: PreviewProvider {
    static var previews: some View {
        Contenedores()
    }
}
