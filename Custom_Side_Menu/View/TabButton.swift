//
//  TabButton.swift
//  Custom_Side_Menu
//
//  Created by 亚飞 on 2021/6/8.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()){
                selectedTab = title
            }
        }, label: {
            
            HStack(spacing : 15){
                
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(
                
                //hero Animation
                ZStack {
                    if selectedTab == title {
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 10))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
            
        })
    }
    
    
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
