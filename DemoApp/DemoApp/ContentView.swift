//
//  ContentView.swift
//  DemoApp
//
//  Created by hassan uriostegui on 8/30/22.
//

import SwiftUI
import S3DCoreUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding(Style.spec.padding)
            .background(Style.spec.palette.background)
            .foregroundColor(Style.spec.palette.background.contrastForeground)
            .cornerRadius(Style.spec.cornerRadius)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
