import SwiftUI

struct SportsActivity: Identifiable {
    var id = UUID()
    var name: String
    var date: Date
}

struct SportsActivitiesView: View {
    @State private var activityName = ""
    @State private var selectedDate = Date()
    @State private var activities: [SportsActivity] = []

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Nueva Actividad Deportiva")) {
                    TextField("Nombre de la actividad", text: $activityName)
                    DatePicker("Fecha", selection: $selectedDate, displayedComponents: .date)
                }

                Section {
                    Button(action: {
                        let newActivity = SportsActivity(name: activityName, date: selectedDate)
                        activities.append(newActivity)
                        activityName = ""
                    }) {
                        Text("Agregar Actividad")
                    }
                }

                Section(header: Text("Actividades Deportivas")) {
                    List {
                        ForEach(activities) { activity in
                            HStack {
                                Text(activity.name)
                                Spacer()
                                Text(activity.date, style: .date)
                            }
                        }
                        .onDelete(perform: deleteActivity)
                    }
                }
            }
            .navigationBarTitle("Actividades Deportivas")
        }
    }

    func deleteActivity(at offsets: IndexSet) {
        activities.remove(atOffsets: offsets)
    }
}

struct SportsActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        SportsActivitiesView()
    }
}

