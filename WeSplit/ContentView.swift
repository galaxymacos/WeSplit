//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
    // @State put variable in a place where it can be changed
    // Without it, variable in struct cannot be modified
    //  @State is specifically designed for simple properties that are stored in one view. As a result, Apple recommends we add private access control to those properties
    @State private var tapCount = 0

        var body: some View {
            Button("Tap Count: \(tapCount)") {
                self.tapCount += 1
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
