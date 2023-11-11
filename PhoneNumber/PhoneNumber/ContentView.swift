//
//  ContentView.swift
//  PhoneNumber
//
//  Created by ximena juana mejia jacobo on 17/10/23.
//


import WebKit
import SwiftUI

struct ContentView: View {
    @State private var nota = ""
    @State private var notas: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    RectangleView(imageName: "Perfil")
                        .tag(0)

                    RectangleView(imageName: "home1")
                        .tag(1)

                    RectangleView(imageName: "tostadas")
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


/*
struct ContentView: View {
    @State private var nota = ""
    @State private var notas: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    // ... (código de las imágenes)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 200)

                VStack {
                    NavigationLink(destination: SegundaVista()) {
                        Image(systemName: "1.square.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue)
                    }
                    NavigationLink(destination: TerceraVista()) {
                        Image(systemName: "2.square.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue)
                    }
                    NavigationLink(destination: CuartaVista()) {
                        Image(systemName: "3.square.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue)
                    }
                    NavigationLink(destination: QuintaVista()) {
                        Image(systemName: "4.square.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("DISQUE INSPIRACIÓN")
        }
    }
}


struct SegundaVista: View {
   
    var body: some View {
          Text("primera visat")
    }
}
struct TerceraVista: View {
    var body: some View {
        Text("Esta es la tercera vista")
    }
}
struct CuartaVista: View {
    var body: some View {
        Text("Esta es la cuarta vista")
    }
}
struct  QuintaVista: View {
    var body: some View {
        Text("Esta es la quinta vista")
    }
}*/

#Preview {
    ContentView()
}
