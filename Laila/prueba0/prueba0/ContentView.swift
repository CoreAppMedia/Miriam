//
//  ContentView.swift
//  prueba0
//
//  Created by user237160 on 10/24/23.
//

import SwiftUI
//kitaa
private let noticias = [
   Nota(id: 1,
            name: "¿Por qué es importante beber agua?",
        imagen: Image("agua")),
   Nota(id: 2,
             name: "Influencia del cambio climático en los huracanes",
             imagen: Image("huracan")),
   Nota(id: 3,
             name: "Beneficios de la meditacion",
             imagen: Image("meditar")),
   Nota(id: 4,
             name: "¿Qué tirar en cada contenedor?",
             imagen: Image("amarillo")),
   Nota(id: 5,
             name: "Animales en peligro de extincion",
             imagen: Image("ajolote"))
        ]//kitaa
struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 0){
                              NavigationView{
                                  List(noticias, id: \.id){
                                      nota in
                                      NavigationLink(destination: Huracan()){
                                          Articulo(nota: nota)
                                      }
                                  }
                              }.padding(0)
                Text("Inspírate").font(.largeTitle.italic()).frame(maxWidth: .infinity, alignment: .center)
                GeometryReader(content: { geometry in let size = geometry.size
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(cards){ card in
                                GeometryReader(content:{proxy in
                                    let cardSize = proxy.size
                                    
                                    Image(card.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: cardSize.width, height: cardSize.height)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                })
                                .frame(width: size.width)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                })
                .frame(height: 250.0)
                Text("¿Lo sabías?")
                    .font(.title)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .center)
            } .padding(20)
        }//Vstack final
        .scrollIndicators(.hidden)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
