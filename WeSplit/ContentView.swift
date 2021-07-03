//
//  ContentView.swift
//  WeSplit
//
//  Created by Xun Ruan on 2021/7/2.
//

import SwiftUI


struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    var body: some View {
        VStack{
            // the description will not show on screen, but it is useful for screen reader
            Picker("Who is your fav student?", selection: $selectedStudent){
                // 1st way to write ForEach
                ForEach (0..<students.count) {
                    Text(students[$0])
                }
                // 2nd way to write ForEach
//                ForEach(0..<students.count){
//                    number in
//                    Text(students[number])
//                }
            }
            Text("The selected student is \(students[selectedStudent])")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
