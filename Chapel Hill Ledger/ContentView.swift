//
//  ContentView.swift
//  Chapel Hill Ledger
//
//  Created by Isaac Adams on 12/1/20.
//

import SwiftUI

//Loads the top level tab menu
struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(0)) {
            
            DashboardView().tabItem {
                Image(systemName: "simcard")
                Text("Dashboard")
            }.tag(0)
            
            DashboardView().tabItem {
                Image(systemName: "graduationcap")
                Text("Classes")
                
            }.tag(1)
            
            Text("Tab Content 3").tabItem {
                Image(systemName: "checkmark.square")
                Text("Requirements")
                
            }.tag(2)
            
            Text("Tab Content 4").tabItem {
                Image(systemName: "person")
                Text("Profile")
                
            }.tag(2)
        }.accentColor(Color.cblue)
    }
}


//Generates the dasboard view
struct DashboardView: View{
    var body: some View{
        
        ZStack{
            
            //Background Gradient
            LinearGradient(gradient: Gradient(colors: [.cblue,.clightblue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .top).ignoresSafeArea(edges: .top)
            
            //VStack containing the dashboard items
            VStack{
                
                //First row containing the name label and GPA label
                HStack{
                    
                    //Label containing the first and last name
                    Text("Isaac Adams")
                        .fontWeight(.bold)
                        .font(.system(size: 45))
                        .foregroundColor(.cnavy)
                        .padding()
                    
                    //GPA Label
                    VStack{
                        Text("GPA:")
                        Text("4.00")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(.cnavy)
                    }.frame(width: 150, height: 150)
                    .background(Color.cgray)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.cnavy, lineWidth: 3))
                    .padding()
                }
                
                //VStack containing the requirements info
                VStack (alignment: .leading){
                    Text("Gen Ed Requirements: 15/32")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.cnavy)
                    Text("Program Requirements: 18/36")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.cnavy)
                }.frame(width: 380, height: 120)
                .background(Color.cgray)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.cnavy, lineWidth: 3))
                
                Spacer()
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
