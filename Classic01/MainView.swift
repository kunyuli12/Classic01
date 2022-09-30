//
//  MainView.swift
//  Classic01
//
//  Created by 暨大附中03 on 2022/2/12.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TabView{
                ShopView().tabItem { Image(systemName:"cart.fill.badge.plus")}
                
                HomeView().tabItem { Image(systemName:"house.fill")}
                
                VgBoxView().tabItem { Image(systemName:"heart.text.square.fill")
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

