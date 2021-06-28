//
//  ContentView.swift
//  Calculate Tips
//
//  Created by Ishita  Narsiker on 13/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    var body: some View {
        VStack (spacing:50){
            Text("Calculate your Tip")
                .font(.title)
        
            VStack {
                Text("Add your Bill amount in the box below and select the percentage of tip you wish to give! ")
                    .font(.caption)
            }
            HStack {
                Text("£")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let TotalNum = Double (total) {
                
                Text("Tip Amount: £ \(TotalNum * tipPercent / 100, specifier: "%.02f")")
            } else {
                Text ("Please add a valid number amount ")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
