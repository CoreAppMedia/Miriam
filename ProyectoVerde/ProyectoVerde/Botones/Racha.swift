//
//  Racha.swift
//  ProyectoVerde
//
//  Created by mac20@ioslabacatlan.appleid.com on 10/11/23.
//

import SwiftUI

struct Racha: View {
    @State private var sustainabilityStreak = 0 // Número de rachas
    @State private var selectedOption = 0
    @State private var motivationalQuotes = [
        "Tu progreso es inspirador. ¡Sigue así!",
        "Cada pequeño paso cuenta hacia un futuro sostenible.",
        "La naturaleza te agradece por tu compromiso.",
        "Haz del mundo un lugar mejor con tus acciones diarias.",
        "La sostenibilidad es la clave para un mañana más brillante.",
        "Tus hábitos positivos impactan el planeta de manera significativa.",
        "Sé el cambio que deseas ver en el mundo.",
        "El poder de la sostenibilidad está en tus manos.",
        "Pequeñas acciones, grandes resultados.",
        "La Tierra agradece tu amor y respeto.",
        "Cada día es una oportunidad para hacer una diferencia.",
        "Vive de manera sostenible, ama la Tierra.",
        "El respeto por la naturaleza es un regalo para las generaciones futuras.",
        "La sostenibilidad es un viaje, no un destino.",
        "Cuida la Tierra como si tu vida dependiera de ello, porque lo hace.",
        "Tu compromiso con la sostenibilidad marca la diferencia.",
        "Cada acto sostenible cuenta en la construcción de un mundo mejor.",
        "La sostenibilidad es la llave para un futuro próspero.",
        "Sé un defensor del medio ambiente en cada elección que hagas.",
        "La sostenibilidad es una inversión en el futuro de nuestro planeta.",
        "Inspira a otros con tu compromiso sostenible.",
        "Haz que cada día cuente para la Tierra y las generaciones venideras.",
        "Tu contribución diaria suma para un mundo más sostenible.",
        "La Tierra merece nuestro amor y protección.",
        "Vive con propósito, vive de manera sostenible.",
        "Sé parte de la solución, no del problema.",
        "La sostenibilidad es el mejor legado que podemos dejar.",
        "Cada acción sostenible es un paso hacia un futuro más verde.",
        "Respeta la Tierra como respetas a tus seres queridos.",
        "Sé un campeón para el planeta.",
        "La sostenibilidad es una forma de vida, no una moda pasajera.",
        "Haz elecciones que reflejen tu amor por la Tierra.",
        "La naturaleza nos ofrece todo, es hora de devolverle el favor.",
        "Vive conscientemente, ama la Tierra intensamente.",
        "Cada día es una oportunidad para hacer la diferencia.",
        "La sostenibilidad es un compromiso que vale la pena.",
        "Tu impacto importa más de lo que piensas.",
        "Sé parte de la solución, no del problema.",
        "La Tierra nos da vida, devolvamos el favor.",
        "La sostenibilidad es la clave para un futuro brillante.",
        "Cada elección cuenta, elige la sostenibilidad.",
        "La Tierra es nuestro hogar, cuidémosla juntos.",
        "Sé un guardián del planeta, sé sostenible.",
        "Pequeñas acciones, grandes cambios.",
        "Vive sosteniblemente hoy para un mañana mejor.",
        "La sostenibilidad es un regalo para las generaciones futuras.",
        "Cada pequeño esfuerzo suma en la lucha por la sostenibilidad.",
        "La naturaleza nos brinda vida, cuidémosla con gratitud.",
    ]
    @State private var randomQuoteIndex = 0

    var body: some View {
        VStack {
            Spacer()

            // Centro de la pantalla para mostrar el progreso de la racha
            VStack {
                Spacer()

                Text("¡Felicidades por tus hábitos sostenibles!")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding()

                Text("Llevas \(sustainabilityStreak) días siendo sostenible.")
                    .foregroundColor(.green)
                    .padding()

                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("PastelGreen"))
                    .padding()
                    .overlay(
                        Text(motivationalQuotes[randomQuoteIndex])
                            .foregroundColor(.orange)
                            .padding()
                    )

                Spacer()

                // Botón para registrar un nuevo día sostenible
                Button(action: {
                    self.incrementStreak()
                    self.shareProgress()
                    self.getRandomQuoteIndex()
                }) {
                    Text("Registrar un nuevo día sostenible")
                        .foregroundColor(.pink)
                        .padding()
                        .background(Color("SustainabilityBlue"))
                        .cornerRadius(10)
                }

                Spacer()
            }
            .background(Color("PastoGreen")) // Fondo color verde pasto
            .edgesIgnoringSafeArea(.all)

            // Menú de opciones en la parte inferior
            HStack {
                Picker(selection: $selectedOption, label: Text("Compartir en")) {
                    Text("Facebook").tag(0)
                    Text("TikTok").tag(1)
                    Text("WhatsApp").tag(2)
                    Text("Instagram").tag(3)
                }
                .pickerStyle(MenuPickerStyle())
                .foregroundColor(.red)
                .padding()
                .background(Color("PastelGreen"))
            }
        }
    }

    // Función para incrementar la racha de sostenibilidad
    private func incrementStreak() {
        sustainabilityStreak += 1
    }

    // Función para compartir el progreso en la red social seleccionada
    private func shareProgress() {
        switch selectedOption {
        case 0:
            // Compartir en Facebook
            print("Compartiendo en Facebook")
        case 1:
            // Subir progreso en TikTok
            print("Subiendo progreso en TikTok")
        case 2:
            // Compartir en WhatsApp
            print("Compartiendo en WhatsApp")
        case 3:
            // Compartir en Instagram
            print("Compartiendo en Instagram")
        default:
            break
        }
    }

    // Función para obtener un índice de frase motivadora aleatoria
    private func getRandomQuoteIndex() {
        randomQuoteIndex = Int.random(in: 0..<motivationalQuotes.count)
    }
}

#Preview {
    Racha()
}
