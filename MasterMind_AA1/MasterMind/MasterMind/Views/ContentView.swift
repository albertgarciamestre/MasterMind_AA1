//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct row {
    let number: Int
    let firstColor: Color
    let secondColor: Color
    let thirdColor: Color
    let fourthColor: Color
}

func doNothing(){}

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel

    var rowList: [row] = [
        row(number: 1, firstColor: Color.red, secondColor: Color.green, thirdColor: Color.blue, fourthColor: Color.yellow),
        row(number: 2, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 3, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 4, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 5, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 6, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 7, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 8, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 9, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 10, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 11, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray),
        row(number: 12, firstColor: Color.gray, secondColor: Color.gray, thirdColor: Color.gray, fourthColor: Color.gray)
    ]
    var body: some View {
        VStack{
            Text("MasterMind").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding().background(Color.orange)
            Spacer()
            
            List{//self.viewModel.rowList passar aixo al view model
                ForEach(rowList, id: \.number) { row in
                    //Text(row.content).padding()
                    RowView(firstColor: row.firstColor, secondColor: row.secondColor,thirdColor: row.thirdColor,fourthColor: row.fourthColor, active: false)
                    }
            }
            
            
            Button("Done", action: doNothing)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(viewModel: ViewModel())
        
    }
   
}
