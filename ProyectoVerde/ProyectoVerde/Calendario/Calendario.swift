//
//  Calendario.swift
//  ProyectoVerde
//
//  Created by Oscar Valdes on 08/11/23.
//

import SwiftUI
import Firebase

struct Event: Identifiable {
    var id = UUID()
    var date: Date
    var title: String
}

struct Calendario: View {
    @State private var selectedDate: Date = Date()
    @State private var newEventTitle: String = ""
    @State private var events: [Event] = []
    @AppStorage("status") var logged = false
    
    var body: some View {
     //   ScrollView{
            VStack {
                    CalendarPicker(selectedDate: $selectedDate)
                        .padding(.trailing,10)
                        .padding(.leading,10)
                    
                    TextField("Título del evento", text: $newEventTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top,2)
                        .padding(.trailing,10)
                        .padding(.leading,10)
                    
                    Button("Agregar Evento") {
                        let newEvent = Event(date: selectedDate, title: newEventTitle)
                        events.append(newEvent)
                        newEventTitle = ""
                    }
                    .foregroundColor(.black)
                    .padding(.vertical,2)
                    .frame(width: UIScreen.main.bounds.width - 190)
                    .background(Color.green.opacity(0.2))
                    .clipShape(Capsule())
                    
                    List {
                        ForEach(events) { event in
                            Text("\(event.date, style: .date) - \(event.title)")
                        }
                        .onDelete(perform: deleteEvent)
                    }
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // Acción del primer botón
                    }) {
                        Text("Notas")
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    Spacer()
                    Button(action: {
                        // Acción del segundo botón
                    }) {
                        Text("Calendario")
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    Spacer()
                    Button(action: {
                        // Acción del tercer botón
                    }) {
                        Text("Perfil")
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    Spacer()
                }//llave del Hstack
                
                
            }
            .navigationBarItems(leading: EditButton().fontWeight(.heavy),
                                trailing:  Button(action: {try! Auth.auth().signOut()
                withAnimation{logged = false}
            }, label: {
                Text("Salir")
                    .fontWeight(.heavy)
            }) )
            .navigationTitle("Logros")
            .navigationBarTitleDisplayMode(.inline)
        }
   
    func deleteEvent(at offsets: IndexSet) {
        events.remove(atOffsets: offsets)
    }
}//llave del body

struct CalendarPicker: View {
    @Binding var selectedDate: Date

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green.opacity(0.2)) // Agrega el fondo verde claro al calendario
                .cornerRadius(10)
            DatePicker(
                "Selecciona una fecha",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            .labelsHidden()
        }
    }// llave funcion
    
}//llave final

#Preview {
    Calendario()
}
