//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
    @State var checkAmount = ""
    @State var numberOfPeople = 2
    @State var tipSelected = 2
    let tipAmounts = [10,15,20,25,30]
    
    var body: some View {
        Form{
            Section{
                TextField("Amount", text:$checkAmount)
                    .keyboardType(.decimalPad)
                // .keyboardType(.numberPad)
            }
            Section{
                Text("$\(checkAmount)")
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
