//
//  Agua.swift
//  prueba0
//
//  Created by user237160 on 10/31/23.
//

import SwiftUI

struct Agua: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing:15){
                Image("agua").resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/)
                Text("¿Por qué es importante beber agua?").font(.title.bold())//.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                Text("El agua proporciona minerales esenciales como el calcio, magnesio y el flúor.").font(.title3)
                
                Text("Algunas funciones en nunestro cuerpo son: colabora en el proceso digestivo, en la respiración y en la circulación sanguínea, retrasa el proceso de envejecimiento, participa en el buen funcionamiento del cerebro y de los nervios.").font(.title3)
                
                
                Link("Seguir leyendo...",destination: URL(string:"https://www.gob.mx/salud/articulos/sabes-por-que-es-importante-consumir-agua#:~:text=Permite%20el%20trasporte%20de%20nutrientes,cerebro%20y%20de%20los%20nervios.")!)
            }
        }.padding(25)//termina vstak
    }
}

struct Agua_Previews: PreviewProvider {
    static var previews: some View {
        Agua()
    }
}
