//
//  TDLimage.swift
//  ToDoList
//
//  Created by 안현규 on 2022/01/31.
//

import SwiftUI

struct TDLimage: View {
    var body: some View{
        Image("About Time")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay (Circle() .stroke(Color.gray, lineWidth: 5))
            .shadow(radius: 7)
            
    }
}

struct TDLimage_Previews: PreviewProvider {
    static var previews: some View {
        TDLimage()
    }
}

