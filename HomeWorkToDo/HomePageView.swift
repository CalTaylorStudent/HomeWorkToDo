import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            HStack{
                Text("To Do:").font(.largeTitle).bold().foregroundColor(.blue)
                Spacer()
                Text("Filter:").foregroundColor(.cyan).font(.title2)
                Picker(selection: .constant(1), label: Text("Picker")) {
                    Text("Subject").tag(1)
                    Text("Due Date").tag(2)
                }
            }.padding()
            Divider()
            ScrollView {
                HStack{
                    Picker(selection: .constant(1), label: Text("Progress")){
                        Image(systemName: "circle").tag(1)
                        Image(systemName: "checkmark.circle.fill").tag(2)
                        Image(systemName: "timer").tag(3)
                    }
                    Text("Scrollable assignments section which will be the host for all of the assignments on the Home Page View.")
                }
                Divider()
                HStack{
                    Picker(selection: .constant(1), label: Text("Progress")){
                        Image(systemName: "circle").tag(1)
                        Image(systemName: "checkmark.circle.fill").tag(2)
                        Image(systemName: "timer").tag(3)
                    }
                    Text("If sorted by due date, then top assignment will be next due.").foregroundColor(.cyan)
                }
                Divider()
                HStack{
                    Picker(selection: .constant(1), label: Text("Progress")){
                        Image(systemName: "circle").tag(1)
                        Image(systemName: "checkmark.circle.fill").tag(2)
                        Image(systemName: "timer").tag(3)
                    }
                    Text("If sorted by Subject, then all assignments belonging to a subject would be shown in their own chunks.")
                }
                Divider()
                HStack{
                    Picker(selection: .constant(1), label: Text("Progress")){
                        Image(systemName: "circle").tag(1)
                        Image(systemName: "checkmark.circle.fill").tag(2)
                        Image(systemName: "timer").tag(3)
                    }
                    Text("Yet to decide whethere class 'chunks' show alphabetically or some other way i.e. class with next due date shows first, class with lowest grade...").foregroundColor(.cyan)
                }
                Divider()
                HStack{
                    Picker(selection: .constant(1), label: Text("Progress")){
                        Image(systemName: "circle").tag(1)
                        Image(systemName: "checkmark.circle.fill").tag(2)
                        Image(systemName: "timer").tag(3)
                    }
                    Text("Each of these assignments will be an HStack: Picker on left{Completed, In Progress, To-Do}, and Assignment Details on the Right")
                }
            }.font(.system(size: 22)).multilineTextAlignment(.center).padding()
            Spacer()
            ControlGroup{
                Button("Edit"){
                    
                }
                Button("Home"){
                    
                }
                Button("Settings"){
                    
                }
            }.padding()
        }
    }
}
