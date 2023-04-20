//
//  CustomTabBarView.swift
//  multi-commerce
//
//  Created by Noye Samuel on 20/04/2023.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var selection: Tab
    
    var body: some View {
        let tabLabel = [TabItem(id: 0, name: "Home", icon: "house.circle"),
                        TabItem(id: 1, name: "Cart", icon: "cart.circle"),
                        TabItem(id: 2, name: "Profile", icon: "person.crop.circle")]
        HStack(alignment: .center, spacing: 4) {
            ForEach(tabLabel) { tab in
                Button {
                    
                } label: {
                    GeometryReader { geo in
                        Rectangle()
                            .foregroundColor(.accentColor)
                            .frame(width: geo.size.width/2, height: 3)
                            .padding(.leading, geo.size.width/4)
                        VStack(alignment: .center, spacing: 4) {
                            Image(systemName: tab.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            Text(tab.name)
                        }.frame(width: geo.size.width, height: geo.size.height)
                    }
                }.tint(Color(.gray))
            }
        }
        .frame(height: 82)
    }
}



struct TabItem: Identifiable {
    let id: Int
    var name: String
    var icon: String
}

enum Tab: Int {
    case home = 0
    case cart = 1
    case profile = 2
}


struct HomeView: View {
    @State var selectedTab: Tab = .home
    var body: some View {
        VStack{
            Spacer()
            CustomTabBarView(selection: $selectedTab)
        }
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    @State var selectedTab: Tab = .home
    static var previews: some View {
        HomeView()
    }
}
