//
//  Meditacion.swift
//  prueba0
//
//  Created by user237160 on 10/31/23.
//

import SwiftUI

struct Meditacion: View {
    var body: some View {
        VStack(alignment: .center, spacing:15){
            Image("meditar")
                .resizable()
                .frame(width: 300, height: 350, alignment: .center)
            Text("Beneficios de la meditacion").font(.title.bold())///.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Se ha demostrado que es un excelente antídoto contra el estrés, que es la causa de muchas enfermedades en nuestro tiempo actual.").font(.title3)
                
                Text("Algunas razones para meditar son: Antídoto contra el estrés, reducción de la ansiedad, la depresión, reducción del riesgo de enfermedades cardiovasculares, etc.").font(.title3)
                
            }
            
            Link("Seguir leyendo...",destination: URL(string:"https://wccm.org/que-es-la-meditacion/?gad_source=1&gclid=EAIaIQobChMIj52-86-iggMVDDjUAR1RRAELEAAYAiAAEgJv2vD_BwE")!)
                 
        }.padding(25)
    }
}

struct Meditacion_Previews: PreviewProvider {
    static var previews: some View {
        Meditacion()
    }
}
