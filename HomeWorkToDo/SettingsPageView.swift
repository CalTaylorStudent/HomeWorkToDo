import SwiftUI

struct SettingsPageView: View{
    @EnvironmentObject var appData:AppData
    @State private var name: String = ""
    @State private var year: String = ""
    
    var body: some View {
        VStack {
            Text("Settings").font(.largeTitle).bold().foregroundColor(.blue).padding()
            Divider()
            GroupBox() {
                Toggle(isOn: $appData.doneDisappear) {
                    Text("Completed Assignments Disappear")
                }.padding(.bottom, 10)
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Setting")
                }.padding(.bottom, 10)
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Setting")
                }.padding(.bottom, 10)
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Setting")
                }
            }.padding()
            Text("Profile").font(.largeTitle).foregroundColor(.blue).padding()
            Divider()
            GroupBox() {
                HStack{
                    Text("Name:")
                    TextField("Current Set Name", text: $name)
                }
                HStack{
                    Text("School Year:")
                    TextField("Current Set Year", text: $year)
                }
            }.padding().font(.system(size: 20))
            Spacer()
            HStack{
                Button("Edit"){
                    appData.currentScreen = 2;
                }.foregroundColor(.white).padding()
                Spacer()
                Button("Home"){
                    appData.currentScreen = 0;
                }.foregroundColor(.white).padding()
                Spacer()
                Button("Settings"){
                    
                }.foregroundColor(.cyan).padding()
            }.background(.black)
        }
    }
}
