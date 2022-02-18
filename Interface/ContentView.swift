//
//  ContentView.swift
//  Interface
//
//  Created by Владислав Положай on 25.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9182453156, green: 0.9182668328, blue: 0.9182552695, alpha: 1))
                .ignoresSafeArea()
            ItemTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
