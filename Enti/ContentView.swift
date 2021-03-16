//
//  ContentView.swift
//  Enti
//
//  Created by Alumne on 23/2/21.
//

import SwiftUI

struct ContentView: View {
    @State var result = 0
    var first = 1
    var second = 2
    var three = 3
    var four = 4
    var five = 5
    var six = 6
    var seven = 7
    var eight = 8
    var nine = 9
    var body: some View {
       
       
            
            
            VStack{
                Text(String(format:"Result:%d",self.result)).padding()
                
                buttonRow(first:1, second:2,third:3)
                buttonRow(first:4, second:5,third:6)
                buttonRow(first:7, second:8,third:9)
                buttonRow(first:0, second:0,third:0)
                
            }
            }
        
            
                  }
        
    

struct buttonRow: View{
    var body: some View{
        HStack{
            Button(String(self.first)){ print(self.first }.padding()
            Button(String(self.second)){print(self.second)}.padding()
            Button(String(self.third)){print(self.third)}.padding()        }
        
    }
    let first:Int
    let second: Int
    let third:Int
    init (first: Int,second:Int,third:Int){
        self.first=first
        self.second=second
        self.third=third
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
