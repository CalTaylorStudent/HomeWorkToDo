import SwiftUI

struct EditPageView: View{
    @State private var screen: Int = 1
    var body: some View{
        VStack{
            Text("Edit").font(.largeTitle).bold().foregroundColor(.blue).padding()
            Divider()
            Picker(selection: $screen, label: Text("Screen Select")) {
                Text("Assignments").tag(1)
                Text("Subjects").tag(2)
            }.pickerStyle(SegmentedPickerStyle()).padding()
            TabView(selection: $screen) {
                VStack{
                    Text("Add/Edit Assignment").font(.title).foregroundColor(.cyan)
                    Spacer()
                    Text("More Functionality here to add or edit an assignment")
                    Spacer()
                }.tabItem{}.tag(1)
                VStack{
                    Text("Add/Edit Subject").font(.title).foregroundColor(.cyan)
                    Spacer()
                    Text("More Functionality here to add or edit a subject")
                    Spacer()
                }.tabItem{}.tag(2)
            }
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
