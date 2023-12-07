import SwiftUI

struct EditPageView: View{
    @EnvironmentObject var appData:AppData
    @State private var screen: Int = 1
    
    @State private var tempString: String = ""
    @State private var dueDate: String = ""
    @State private var category: String = ""
    @State private var subjectSelected: String = ""
    
    @State private var final:String = ""
    
    var body: some View{
        VStack{
            Text("Edit").font(.largeTitle).bold().foregroundColor(.blue).padding()
            Divider()
            Picker(selection: $screen, label: Text("Screen Select")) {
                Text("Subjects").tag(1)
                Text("Assignments").tag(2)
            }.pickerStyle(SegmentedPickerStyle()).padding()
            TabView(selection: $screen) {
                VStack{
                    Text("Add/Edit Subject").font(.title).foregroundColor(.cyan)
                    Spacer()
                    VStack{
                        ForEach(appData.subjectList, id: \.self){ string in
                            Text(string).padding(.vertical, 5)
                        }
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        TextField(
                            "New Subject Here",
                            text: $tempString
                        )
                        Spacer()
                    }
                    Button("Create Subject"){
                        appData.subjectList.append(tempString)
                        tempString = ""
                    }
                    Spacer()
                }.tabItem{}.tag(1).padding()
                VStack{
                    Text("Add/Edit Assignments").font(.title).foregroundColor(.cyan)
                    Spacer()
                    
                    TextField("Assignment Name", text: $tempString)
                    Picker(selection: $subjectSelected, label: Text("Picker")) {
                        ForEach(appData.subjectList, id: \.self){ word in
                            Text(word)
                        }
                    }.foregroundColor(.cyan)
                    TextField("Due Date", text: $dueDate)
                    TextField("Category (quiz, exam, homework)", text: $category)
                    Button("Create Assignment"){
                        
                        let tempAssignment = Assignment(name: tempString, dueDate: dueDate, category: category, subject: subjectSelected)
                        
                        appData.assignmentList.append(tempAssignment)
                        
                        final = "Assignment Added!"
                        tempString = ""
                        subjectSelected = ""
                        dueDate = ""
                        category = ""
                    }
                    Text(final).padding()
                    Spacer()
                }.tabItem{}.tag(2).padding()
            }
            Spacer()
            HStack{
                Button("Edit"){
                    
                }.foregroundColor(.cyan).padding()
                Spacer()
                Button("Home"){
                    appData.currentScreen = 0;
                }.foregroundColor(.white).padding()
                Spacer()
                Button("Settings"){
                    appData.currentScreen = 1;
                }.foregroundColor(.white).padding()
            }.background(.black)
        }
    }
}
