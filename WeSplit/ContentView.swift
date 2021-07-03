//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
    @State var checkAmount = ""
    @State var numberOfPeople = 0
    @State var tipSelected = 0
    let tipAmounts = [10,15,20,25,30]
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                
                    TextField("Amount", text:$checkAmount)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("How much tip do you want to leave")){
                    Picker("Tip percentage", selection: $tipSelected){
                        ForEach(0..<tipAmounts.count){
                            Text("\(tipAmounts[$0])%")
                        }
                    }
                    // .pickerStyle(.segment)
                    .pickerStyle(SegmentedPickerStyle())    // Look much better
                // textCase(nil) allows us to keep the original letter case, else the header will be uppercase by default
                }.textCase(nil)
                
                Section{
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
