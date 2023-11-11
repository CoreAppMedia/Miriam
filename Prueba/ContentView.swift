//
//  ContentView.swift
//  Prueba
//
//  Created by Jatziri on 09/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nombreTitular = ""
    @State private var apellidosTitular = ""
    @State private var claveTarjeta = ""
    @State private var expiracionTarjeta = ""
    @State private var codigoSeguridad = ""
    @State private var email = ""
    @State private var numeroTelefono = ""

    var body: some View {
        VStack {
            Text("vamos a donar")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
            
            // Opciones para la donación de cena
            // Puedes agregar más opciones según sea necesario
            
            Form {
                Section(header: Text("Información del titular").foregroundColor(.white)) {
                    TextField("Nombre", text: $nombreTitular)
                    TextField("Apellidos", text: $apellidosTitular)
                }
                
                Section(header: Text("Información de la tarjeta").foregroundColor(.white)) {
                    TextField("Clave de tarjeta", text: $claveTarjeta)
                    TextField("Expiración (MM/YY)", text: $expiracionTarjeta)
                    TextField("Código de seguridad", text: $codigoSeguridad)
                }
                
                Section(header: Text("Información de contacto").foregroundColor(.white)) {
                    TextField("Email", text: $email)
                    TextField("Número de teléfono", text: $numeroTelefono)
                }
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.black)
        }
    }
}

struct DonationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
