//
//  SearchButton.swift
//  Interface
//
//  Created by Владислав Положай on 27.07.2021.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image("search")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            })
        }
    }
}
struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton()
    }
}
