//
//  SecondPage.swift
//  ToDoList
//
//  Created by 안현규 on 2022/01/30.
//

import Foundation
import SwiftUI



struct SecondPage: View {
    
    @State var username : String = ""
    @State var success : String = ""
    
    @State var ToDOList1 : String = ""
    @State var ToDOList2 : String = ""
    @State var ToDOList3 : String = ""
    @State var ToDOList4 : String = ""
    @State var ToDOList5 : String = ""
    @State var ToDOList6 : String = ""
    @State var ToDOList7 : String = ""
    @State var ToDOList8 : String = ""
    @State var ToDOList9 : String = ""
    @State var ToDOList10 : String = ""
    
    
    @State private var someToggle1 = false
    @State private var someToggle2 = false
    @State private var someToggle3 = false
    @State private var someToggle4 = false
    @State private var someToggle5 = false
    @State private var someToggle6 = false
    @State private var someToggle7 = false
    @State private var someToggle8 = false
    @State private var someToggle9 = false
    @State private var someToggle10 = false
    
    
    
    var body: some View{
        
        TabView{
            VStack{
                VStack{
                    TextField("Enter your name : ", text: $username)
                        .padding()
                        .font(.system(size:20))
                        .foregroundColor(Color.blue)
                        .frame(width: 200, height: 50, alignment: .center)
                    
                    Text("Hello \(username) !")
                        .padding(20)
                        .frame(width: 200, height: 50, alignment: .center)
                }.position(x: 150, y: 120)
                
                VStack{
                    Text("Enter your success ! ")
                        .font(.system(size:20))
                        .frame(width: 200, height: 40, alignment: .center)
                    
                    TextField("success",text: $success)
                        .padding(15)
                        .font(.system(size:20))
                        .frame(width: 200, height: 50, alignment: .center)
                    
                }.position(x: 150, y: 60)
               
            }// vstack 1
            .tabItem{Label("User",systemImage:"person.crop.circle")}
    
            VStack{
                List{
                    Section(header: Text("오늘 해야 할 일")
                                .font(.system(size: 20, weight: .bold))
                               
                    ){
                        
                        HStack{
                            TextField("1. 할 일을 입력하세요.", text: $ToDOList1)
                            Spacer()
                            Toggle("", isOn: $someToggle1)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("2. 할 일을 입력하세요.", text: $ToDOList2)
                            Spacer()
                            Toggle("", isOn: $someToggle2)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("3. 할 일을 입력하세요.", text: $ToDOList3)
                            Spacer()
                            Toggle("", isOn: $someToggle3)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("4. 할 일을 입력하세요.", text: $ToDOList4)
                            Spacer()
                            Toggle("", isOn: $someToggle4)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("5. 할 일을 입력하세요.", text: $ToDOList5)
                            Spacer()
                            Toggle("", isOn: $someToggle5)
                                .frame(width: 60, height: 40, alignment: .trailing)
                                
                        }
                        
                        if someToggle1, someToggle2, someToggle3, someToggle4, someToggle5 == true{
                            
                                Text("오늘 할 일 끝 !!!")
                                    .padding(10)
                                    .foregroundColor(.blue)
                                    .font(.system(size: 20, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .center)
            
                        }
                    }//section1
                    
                    Section(header: Text("내일 해야 할 일")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.black)
                    
                    ){
                        HStack{
                            TextField("1. 내일 할 일을 입력하세요.", text: $ToDOList6)
                            Spacer()
                            Toggle("", isOn: $someToggle6)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("2. 내일 할 일을 입력하세요.", text: $ToDOList7)
                            Spacer()
                            Toggle("", isOn: $someToggle7)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("3. 내일 할 일을 입력하세요.", text: $ToDOList8)
                            Spacer()
                            Toggle("", isOn: $someToggle8)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("4. 내일 할 일을 입력하세요.", text: $ToDOList9)
                            Spacer()
                            Toggle("", isOn: $someToggle9)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        HStack{
                            TextField("5. 내일 할 일을 입력하세요.", text: $ToDOList10)
                            Spacer()
                            Toggle("", isOn: $someToggle10)
                                .frame(width: 60, height: 40, alignment: .trailing)
                        }
                        
                        if someToggle6, someToggle7, someToggle8, someToggle9, someToggle10 == true{
                            
                                Text("내일 계획짜기 끝 !!!")
                                    .padding(10)
                                    .foregroundColor(.blue)
                                    .font(.system(size: 20, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .center)
            
                        }
                    }//section2

                }// List
                .navigationTitle("\(username)'s To Do List ")
                
            }// vstck 2
            .tabItem{Label("List",systemImage:"doc.plaintext")}
           
            VStack{
                
                if someToggle1, someToggle2, someToggle3, someToggle4, someToggle5 == true{
                    
                        Text("You need to enjoy")
                            .padding(10)
                            .foregroundColor(.blue)
                            .font(.system(size: 25, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .center)
                    
                        Text("\(success) !!!")
                            .font(.system(size: 30, weight: .bold))
                    
                }else{
                    
                    Text("Your make effort !")
                        .padding()
                        .font(.system(size:30))
                        .foregroundColor(Color.blue)
                }
               
            }//vstack 3
            .tabItem{Label("Success",systemImage:"moon.fill")}
            
        }
        
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
