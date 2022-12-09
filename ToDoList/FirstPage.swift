//
//  FirstPage.swift
//  ToDoList
//
//  Created by 안현규 on 2022/01/30.
//

import Foundation
import SwiftUI

struct FirstPage: View {
    
    var body: some View{
        
        VStack{
            Text("To Do List")
                .font(.system(size: 40))
            
            Text("made by kyu")
                .foregroundColor(.black)
                .frame(width: 150, height: 20, alignment: .trailing)
        }// Vstack
        .padding(10)
        
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}

