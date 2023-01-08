//
//  ContentView.swift
//  MyMenu
//
//  Created by Purushottam Padhya on 5/1/2023.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            
            List {
                ForEach(menu) {section in
                    Section(section.name) {
                        ForEach(section.items) {item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) {item in
                ItemDetail(item: item)
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
