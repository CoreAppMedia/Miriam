//
//  SideMenu.swift
//  MisDonaciones
//
//  Created by Jatziri on 08/11/23.
//

import SwiftUI

struct SideMenu: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 15) {
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text("¡¡ Vamos a donar !!")
                    .font(.title2.bold())
                Text("Desarollo sustentable")
                    .font(.callout)
                
                HStack(spacing: 12) {
                    Button {} label: {
                        Label {
                            Text("FES Acatlán")
                        } icon: {
                            Text("MAC")
                        }
                    }
                    Button {} label: {
                        Label {
                            Text("IOS")
                        } icon: {
                            Text("App")
                        }
                    }
                }
                .foregroundColor(.primary)
            }
            .padding()
            .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 10 ){
                VStack(alignment: .leading,spacing: 45){
                    TabButton(title: "Greenpeace México", image: "Profile" )
                    TabButton(title: "Fondo Mundial para la Naturaleza (WWF) - México:", image: "Profile" )
                    TabButton(title: "Reforestamos México:", image: "Profile" )
                    TabButton(title: "Centro Mexicano de Derecho Ambiental (CEMDA): ", image: "Profile" )
                    TabButton(title: "Fondo para la Comunicación y la Educación Ambiental (FCEA) ", image: "Profile" )
                   }
                .padding(.horizontal)
                .padding(.leading)
                .padding(.top, 45)
                
                Divider()
                    .padding(.vertical)
                
                TabButton(title: "Registrate", image: "Ads")
                    .padding(.horizontal)
                    .padding(.leading)
                
                Divider()
                    .padding(.vertical)
                VStack(alignment: .leading, spacing: 45){
                    Button("Settings and Privacy") {}
                    Button("Help Center") {}
                }
                .padding(.horizontal)
                .padding(.leading)
                .padding(.bottom, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.primary)
                }
            }
            VStack{
                Divider()
                HStack {
                    Button {} label: {
                        Image("Light")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }
                    Spacer()
                    Button {} label: {
                        Image("QR")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }
                }
                .padding([.horizontal, .top],15)
                .padding(.bottom,safeArea().bottom == 0 ? 15 : 0)
                .foregroundColor(.primary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
        Color.primary.opacity(0.04).ignoresSafeArea(.container, edges: .vertical)
        )
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func TabButton(title: String, image: String)->some View {
        NavigationLink {
            Text("\(title)")
                .navigationTitle(title)
        } label: {
            HStack(spacing: 14) {
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                
                Text(title)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct SideMenu_Previews: PreviewProvider{
    static var previews: some View{
        SideMenu(showMenu: .constant(false))
    }
}

