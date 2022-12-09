//
//  SwiftUIViewTest.swift
//  ToDoList
//
//  Created by 안현규 on 2022/02/06.
//

import SwiftUI

struct SwiftUIViewTest: View {
    

    var body: some View {
                Text("This is Test View")
                    .font(.system(size: 30))
                    .frame(width: 300, height: 80, alignment: .center)
                    .background(Color.peach)
    }
}

struct SwiftUIViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewTest()
    }
}
