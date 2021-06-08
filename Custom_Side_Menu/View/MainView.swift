//
//  MainView.swift
//  Custom_Side_Menu
//
//  Created by 亚飞 on 2021/4/26.
//

import SwiftUI

struct MainView: View {
    
    // selected Tab...
    @State var selectedTab = "Home"
    
    //Animation NameSpace...
    @Namespace var animation
    
    var body: some View {
       
        ZStack  {
            
            Color("blue")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                //Padding top for Top Close Button
                    .padding(.top, 50)
                
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text("Jenna Ezarik")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Button(action: {}, label: {
                        
                        Text("View Profile")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .opacity(0.7)
                    })
                    
                    
                    
                    
                }
                
                // tab Buttons
                VStack(alignment: .leading, spacing: 0) {
                    
                    TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
                    
                }
                .padding(.leading, -15)
                .padding(.top, 50)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
