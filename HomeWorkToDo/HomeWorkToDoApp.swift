//
//  HomeWorkToDoApp.swift
//  HomeWorkToDo
//
//  Created by Cal M. Taylor on 11/14/23.
//

import SwiftUI

class AppData: ObservableObject{
    @Published var currentScreen: Int = 0
    @Published var doneDisappear: Bool = false
}

//Need assignment class and subject class, use assignment class to fix picker per assignment on home page. Figure out an order/filter for subject and due date.
//Struggling to get it to push

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
