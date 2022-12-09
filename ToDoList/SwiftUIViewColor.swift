//
//  SwiftUIViewColor.swift
//  ToDoList
//
//  Created by 안현규 on 2022/02/06.
//

import SwiftUI


extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}

//원하는 컬러 생성
extension Color {

   static let peach = Color(hex: "#ff8882")
   static let ivory = Color(hex: "f8ede3")
   static let brown = Color(hex: "897853")  // #을 제거하고 사용해도 됩니다.
}

struct SwiftUIViewColor: View {
    var body: some View {
        VStack{
            Text("color is peach")
                .font(.system(size: 25, weight: .bold))
                .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.peach)
                .padding(10)
            Text("color is ivory")
                .font(.system(size: 25, weight: .bold))
                .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.ivory)
                .padding(10)
            Text("color is brown")
                .font(.system(size: 25, weight: .bold))
                .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.brown)
                .padding(10)
        }
        
        
            
    }
}

struct SwiftUIViewColor_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewColor()
    }
}
