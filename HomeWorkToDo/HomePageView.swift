import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var appData:AppData
    @State private var filter:Int = 1
    
    
    var body: some View {
        VStack {
            HStack{
                Text("To Do:").font(.largeTitle).bold().foregroundColor(.blue)
                Spacer()
                Text("Filter:").foregroundColor(.cyan).font(.title2)
                Picker(selection: $filter, label: Text("Picker")) {
                    Text("Subject").tag(1)
                    Text("Due Date").tag(2)
                }
            }.padding()
            Divider()
            ScrollView {
                ForEach(appData.assignmentList, id: \.self) { assign in
                    HStack{
                        Picker(selection: .constant(1), label: Text("Progress")){
                            Image(systemName: "circle").tag(1)
                            Image(systemName: "checkmark.circle.fill").tag(2)
                            Image(systemName: "timer").tag(3)
                        }
                        Text("Name: \(assign.name)\nDue Date: \(assign.dueDate)\nCategory: \(assign.category) \nSubject: \(assign.subject)")
                    }
                    Divider()
                }
            }.font(.system(size: 22)).multilineTextAlignment(.center).padding()
            Spacer()
            HStack{
                Button("Edit"){
                    appData.currentScreen = 2;
                }.foregroundColor(.white).padding()
                Spacer()
                Button("Home"){
                    
                }.foregroundColor(.cyan).padding()
                Spacer()
                Button("Settings"){
                    appData.currentScreen = 1;
                }.foregroundColor(.white).padding()
            }.background(.black)
        }
    }
    func getStrings(assign: Assignment) -> String {
        
        return "Name: \(assign.name)\nDue Date: \(assign.dueDate)\nCategory: \(assign.category) \nSubject: \(assign.subject)"
    }
    
    
}
