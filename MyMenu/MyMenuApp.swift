//
//  MyMenuApp.swift
//  MyMenu
//
//  Created by Purushottam Padhya on 5/1/2023.
//

import SwiftUI

@main
struct MyMenuApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
