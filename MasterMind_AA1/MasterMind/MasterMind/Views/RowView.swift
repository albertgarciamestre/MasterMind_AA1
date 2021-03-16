//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//
import SwiftUI



struct RowView: View {
    let firstColor: Color
    let secondColor: Color
    let thirdColor: Color
    let fourthColor: Color
    let active: Bool
    
    var body: some View {
        HStack{
            Spacer()
            
            Circle()
                .fill(firstColor)
            Circle()
                .fill(secondColor)
            Circle()
                .fill(thirdColor)
            Circle()
                .fill(fourthColor)
            Spacer()
            VStack{
                
                Circle().fixedSize()
                Circle().fixedSize()
            }
            VStack{
                Circle().fixedSize()
                Circle().fixedSize()
            }
            Spacer()
        }
            
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red, active: false)
        
        
        
    }
}
