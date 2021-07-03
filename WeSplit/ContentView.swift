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
        NavigationView{
            Form{
                Section{
                    TextField("Amount", text:$checkAmount)
                        .keyboardType(.decimalPad)
                    // .keyboardType(.numberPad)
                    
                    // selection = index of the selection
                    // Picker will behave differently when you attach it to a form directly, here it chooses sliding view because it is in a form, it may choose something else in other platforms
                    Picker("People", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                
            }
            .navigationBarTitle("We Split")
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
