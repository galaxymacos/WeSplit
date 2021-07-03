//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
        @State var name: String = ""
        var body: some View {
            Form{
                // $ = it should read the value of the property but also write it back as any changes happen.
                TextField("TextField", text: $name)
                Text("Your name is \(name)")
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
