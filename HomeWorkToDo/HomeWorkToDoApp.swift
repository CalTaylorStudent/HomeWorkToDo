import SwiftUI

class AppData: ObservableObject{
    @Published var currentScreen: Int = 0
    @Published var doneDisappear: Bool = false
    @Published var assignmentList: Array<Assignment>
    @Published var subjectList: Array<String>
    
    init(){
        assignmentList = []
        subjectList = []
    }
}

class Assignment: Hashable {
    @Published var subject: String
    @Published var dueDate: String
    @Published var category: String
    @Published var name: String
    
    init(name: String, dueDate: String, category: String, subject:String){
        self.dueDate = dueDate
        self.name = name
        self.category = category
        self.subject = subject
    }
    
    static func == (first:Assignment, second:Assignment) -> Bool {
        return first.subject == second.subject && first.dueDate == second.dueDate && first.category == second.category && first.name == second.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(subject)
        hasher.combine(dueDate)
        hasher.combine(category)
        hasher.combine(name)
    }
}


//Need assignment class and subject class, use assignment class to fix picker per assignment on home page. Figure out an order/filter for subject and due date.

@main
struct HomeWorkToDoApp: App {
    @ObservedObject var appData: AppData = AppData()
    var body: some Scene {
        WindowGroup {
            if appData.currentScreen == 0{
                HomePageView().environmentObject(appData)
            }
            else if appData.currentScreen == 1{
                SettingsPageView().environmentObject(appData)
            }
            else if appData.currentScreen == 2{
                EditPageView().environmentObject(appData)
            }
        }
    }
}
