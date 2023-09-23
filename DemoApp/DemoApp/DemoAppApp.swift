//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by hassan uriostegui on 8/30/22.
//

import SwiftUI
import S3DCoreUI

class Model:ObservableObject{
    init(){
//        let framework = S3DCoreUI()
//        framework.test()
    }
}

@main
struct DemoAppApp: App {
    @ObservedObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
