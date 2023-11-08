import SwiftUI


struct Event: Identifiable {
    var id = UUID()
    var date: Date
    var title: String
}


struct CalendarView: View {
    @State private var selectedDate: Date = Date()
    @State private var newEventTitle: String = ""
    @State private var events: [Event] = []

    var body: some View {
        
        NavigationView {
            VStack {
                Text("Logros")
                    .font(.largeTitle)
                
                CalendarPicker(selectedDate: $selectedDate)
                
                TextField("Título del evento", text: $newEventTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Agregar Evento") {
                    let newEvent = Event(date: selectedDate, title: newEventTitle)
                    events.append(newEvent)
                    newEventTitle = ""
                }
                .padding()
                
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
                           }
                
                
            }
           
            .navigationBarItems(leading: EditButton())
        }
    }

    func deleteEvent(at offsets: IndexSet) {
        events.remove(atOffsets: offsets)
    }
}

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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

