//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI

// View is a basic protocol for anything you want to draw on screen
// the only limitation of View is to have a body property that returns some View
struct ContentView: View {
    // {} return something that confirm to View, and "some" means you can only return one kind of View
    var body: some View {
        // Text view can automatically wrapped to multiple lines
        Form{
            Section{
                Text("Brightness")
            }
            Section{
                Text("Accessbility")
                Text("About")
                Text("Battery")
            }
            
        }
    }
}

// Only affect the look but not the actual app
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
