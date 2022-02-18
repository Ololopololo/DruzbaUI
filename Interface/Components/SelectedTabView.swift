//
//  SelectedTabView.swift
//  Interface
//
//  Created by Владислав Положай on 02.08.2021.
//

import SwiftUI

struct SelectedTabView: View {
    var image : Image
    var body: some View {
        ZStack{
            Image("Eclipse")
                .resizable()
                .frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            image
                .resizable()
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct SelectedTabView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedTabView(image: Image("tab1"))
    }
}
