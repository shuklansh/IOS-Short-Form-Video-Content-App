//
//  MainTabView.swift
//  IOS Short Form Video Content App
//
//  Created by Ansh Shukla on 29/06/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView {
            TabItem(selectedTab: $selectedTab, tabItemValue: TabMember.feed)
            TabItem(selectedTab: $selectedTab, tabItemValue: TabMember.friends)
            TabItem(selectedTab: $selectedTab, tabItemValue: TabMember.upload)
            TabItem(selectedTab: $selectedTab, tabItemValue: TabMember.inbox)
            TabItem(selectedTab: $selectedTab, tabItemValue: TabMember.profile)
        }.onAppear {
            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        }
        .preferredColorScheme(.dark)
    }
}

struct TabItem: View {
    @Binding var selectedTab: Int
    var tabItemValue: TabMember
    var body: some View {
        Text((tabItemValue.tabTitle))
            .tabItem {
                VStack {
                    Image(systemName: tabItemValue.imageResource)
                        .environment(\.symbolVariants, selectedTab == tabItemValue.id.rawValue ? .fill : .none)
                    Text(tabItemValue.tabTitle)
                }
            }
    }
}

enum TabMember: Int, CaseIterable, Identifiable {
    case feed = 0
    case friends = 1
    case upload = 2
    case inbox = 3
    case profile = 4
    
    var tabTitle: String {
        switch self {
            case .feed: "Feed"
            case .friends: "Friends"
            case .upload: ""
            case .inbox: "Inbox"
            case .profile: "Profile"
        }
    }
    
    var imageResource: String {
        switch self {
            case .feed: "house"
            case .friends: "person.2"
            case .upload: "plus"
            case .inbox: "heart"
            case .profile: "person"
        }
    }
    
    var id: TabMember { self }
}
#Preview {
    MainTabView()
}
