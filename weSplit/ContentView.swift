//
//  ContentView.swift
//  weSplit
//
//  Created by Aaryan Kothari on 18/02/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    var totalPerPerson: Double {
        //calculate total per person here
        return 0
    }
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        NavigationView {
        Form {
            Section{
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
                Picker("Number of People", selection: $numberOfPeople){
                    ForEach(2..<100){
                        Text("\($0) people")
                    }
                }
            }
            Section(header: Text("How much tip do you want to leave?")) {
                Picker("Tip Percentages",selection: $tipPercentage){
                    ForEach(0..<tipPercentages.count){
                        Text("\(self.tipPercentages[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section {
                Text("$\(checkAmount)")
            }
        }
    }
        .navigationBarTitle("weSplit")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

