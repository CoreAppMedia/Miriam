//
//  Inspiracion.swift
//  ProyectoVerde
//
//  Created by mac20@ioslabacatlan.appleid.com on 10/11/23.
//

import SwiftUI

struct Inspiracion: View {
    @State private var nota = ""
    @State private var notas: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    RectangleView(imageName: "img1")
                        .tag(0)

                    RectangleView(imageName: "img2")
                        .tag(1)

                    RectangleView(imageName: "img3")
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 200)
                
                VStack {
                    NavigationLink(destination: SegundaVista()) {
                        HStack {
                            Image(systemName: "1.square.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Texto de la primera opción")
                        }
                    }
                    
                    NavigationLink(destination: TerceraVista()) {
                        HStack {
                            Image(systemName: "2.square.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Texto de la segunda opción")
                        }
                    }
                    
                    NavigationLink(destination: CuartaVista()) {
                        HStack {
                            Image(systemName: "3.square.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Texto de la tercera opción")
                        }
                    }
                    
                    NavigationLink(destination: QuintaVista()) {
                        HStack {
                            Image(systemName: "4.square.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.blue)
                            Text("Texto de la cuarta opción")
                        }
                    }
                }
            }
            .navigationTitle("DISQUE INSPIRACIÓN")
        }
    }
}

struct RectangleView: View {
    var imageName: String

    var body: some View {
        NavigationLink(destination: DetalleView(imageName: imageName)) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
        }
    }
}

struct DetalleView: View {
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)

            Text(imageName)
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle(imageName)
    }
}
//por si no la captas estas son las vistas de los cuadrados los cuales puedes cambiar por imagenes
struct SegundaVista: View {
    var body: some View {
        VStack{
            Link(destination: URL(string: "https://www.shutterstock.com/es/search/caca")!){
                HStack{
                    Image(systemName: "link")
                    Text("tu cagada de app")
                }
            }
        }
        Text("Aqui escribes tu noticia, reina")
            .font(.largeTitle)
            .padding()
    }
}
//haces lo mismo n cantidad de veces y n me refiero a la cantidad que quieras
struct TerceraVista: View {
    var body: some View {
        Text("y aqui tambien")
            .font(.largeTitle)
            .padding()
    }
}

struct CuartaVista: View {
    var body: some View {
        Text("aqui igual")
            .font(.largeTitle)
            .padding()
    }
}

struct QuintaVista: View {
    var body: some View {
        Text("te repito que aqui tambien no te me vayas a confundir ")
            .font(.largeTitle)
            .padding()
    }
}

#Preview {
    Inspiracion()
}
