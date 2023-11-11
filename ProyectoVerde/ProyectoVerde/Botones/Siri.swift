//
//  Siri.swift
//  ProyectoVerde
//
//  Created by mac20@ioslabacatlan.appleid.com on 10/11/23.
//

import SwiftUI

struct Siri: View {
    @State private var siriResponse = ""
    
    let environmentalTips = [
        "Reducir el consumo de plástico es clave para proteger nuestros océanos. ¿Has intentado llevar bolsas reutilizables?",
        "Apaga los electrodomésticos cuando no los uses para ahorrar energía.",
        "Plantar árboles ayuda a combatir el cambio climático. ¿Por qué no consideras participar en una actividad de reforestación?",
        "Reciclar papel es una forma sencilla de conservar los recursos naturales.",
        "Usar bombillas LED consume menos energía. ¿Has pensado en cambiar tus bombillas?",
        "Reducir el desperdicio de alimentos es esencial. Planifica tus comidas y aprovecha al máximo tus ingredientes.",
        "Ahorrar agua es fundamental. Arregla las fugas y utiliza dispositivos de ahorro de agua.",
        "Viajar en bicicleta o caminar emite menos carbono. ¿Has probado a dejar el coche ocasionalmente?",
        "Las bolsas de tela son una excelente alternativa a las bolsas de plástico. ¿Las has usado?",
        "Cultivar tu propia comida en casa puede ser gratificante y reduce la huella de carbono.",
        "Participar en la limpieza de playas contribuye a mantener nuestros océanos limpios.",
        "Comprar productos locales reduce la huella de carbono del transporte de mercancías.",
        "Reducir el uso de productos desechables ayuda a disminuir la cantidad de residuos.",
        "La energía solar es una fuente limpia y renovable. ¿Has considerado instalar paneles solares?",
        "Evitar el consumo de carne algunos días a la semana beneficia al medio ambiente.",
        "Reciclar dispositivos electrónicos evita la contaminación por metales pesados.",
        "Cuidar la biodiversidad es crucial. Apoya a organizaciones que protegen la fauna y flora.",
        "Evitar el uso de pesticidas ayuda a mantener un equilibrio en los ecosistemas.",
        "Elegir productos con empaques sostenibles reduce el impacto ambiental.",
        "Conectar varios dispositivos a una regleta y apagarla cuando no estén en uso ahorra energía.",
        // Agregué más respuestas
        "Reutilizar botellas de agua es una excelente manera de reducir residuos plásticos.",
        "El compostaje de residuos orgánicos ayuda a crear abono natural para tu jardín.",
        "Participar en programas de reciclaje de electrónicos ayuda a gestionar residuos tecnológicos de manera responsable.",
        "Mantén tu vehículo en buen estado para mejorar la eficiencia del combustible.",
        "Apoyar a empresas con prácticas sostenibles fomenta la responsabilidad ambiental.",
        "Reducir el consumo de carne roja tiene un impacto positivo en las emisiones de gases de efecto invernadero.",
        "Evitar el uso excesivo de papel contribuye a la conservación de los bosques.",
        "Involucrarte en proyectos de reforestación local ayuda a restaurar áreas naturales.",
        "Consumir productos de temporada reduce la necesidad de transporte de larga distancia.",
        "Apoyar a iniciativas de energía renovable impulsa la transición hacia fuentes más limpias."
    ]
    var body: some View {
        VStack {
            Spacer()
            
            Image("earth")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Text("¡Hola! Soy Siri, tu asistente ambiental.")
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                // Seleccionar aleatoriamente una respuesta
                siriResponse = getRandomEnvironmentalTip()
            }) {
                Text("Háblame sobre hábitos ambientales")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            
            Spacer()
            
            Text(siriResponse)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground))
        .navigationBarTitle("Hábitos Ambientales", displayMode: .inline)
        .accentColor(Color.green)
    }
    
    // Función para obtener una respuesta aleatoria de Siri
    private func getRandomEnvironmentalTip() -> String {
        return environmentalTips.randomElement() ?? "Estoy aquí para ayudarte a cuidar el medio ambiente."
    }
}

#Preview {
    Siri()
}
