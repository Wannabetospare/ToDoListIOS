//  ContentView.swift
//  ToDoList
//
//  Created by 안현규 on 2022/01/30.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                FirstPage()
                .position(CGPoint(x: 180, y: 0))
                
                TDLimage()
                    .padding(20)
                    .position(CGPoint(x: 180, y: 40))
                
                NavigationLink(destination: SecondPage() ){
                    Text("Start")
                        .position(CGPoint(x: 180, y: 70))
                        .font(.system(size: 20))
                    
                }
            }
            
        }
    
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
