//
//  Huracan.swift
//  prueba0
//
//  Created by user237160 on 10/29/23.
//

import SwiftUI

struct Huracan: View {
    var body: some View {
        VStack(alignment: .center, spacing:15){
            Image("huracan1").resizable()
                .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/)
            Text("Así influye el cambio climático en la intensidad y duración de los huracanes").font(.title.bold())
           
            Text("El aumento de la temperatura del océano y el nivel de humedad son factores que pueden incrementar la intensidad de las grandes tormentas.")
            
            Text("Phil Klotzbach, investigador de huracanes en la Universidad Estatal de Colorado, explica que la mayor preocupación respecto al cambio climático radica en el aumento del nivel del mar y el aumento de las precipitaciones.")
                
            
            Link("Seguir leyendo...",destination: URL(string:"https://www.nationalgeographic.com.es/ciencia/asi-afecta-cambio-climatico-a-formacion-huracanes_18987")! )
                 
        }.padding(25)
    }
}

struct Huracan_Previews: PreviewProvider {
    static var previews: some View {
        Huracan()
    }
}
