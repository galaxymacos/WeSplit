//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
    @State var checkAmountS = ""
    @State var numOfPeopleIndex = 0
    @State var tipSelectionIndex = 0
    var totalPerPerson:Double {
        
        let checkAmount:Double = (Double)(checkAmountS) ?? 0
        let numOfPeople:Double = (Double)(numOfPeopleIndex + 2)
        let tip = (Double)(tipAmounts[tipSelectionIndex])/100 * checkAmount
        return (checkAmount + tip)/numOfPeople
    }
    
    
    let tipAmounts = [10,15,20,25,30]
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                
                    TextField("Amount", text:$checkAmountS)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("How much tip do you want to leave")){
                    Picker("Tip percentage", selection: $tipSelectionIndex){
                        ForEach(0..<tipAmounts.count){
                            Text("\(tipAmounts[$0])%")
                        }
                    }
                    // .pickerStyle(.segment)
                    .pickerStyle(SegmentedPickerStyle())    // Look much better
                // textCase(nil) allows us to keep the original letter case, else the header will be uppercase by default
                }.textCase(nil)
                
                Section{
                    Picker("People", selection: $numOfPeopleIndex){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                Section{
                    Text("Total per person: $\(totalPerPerson)")
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
