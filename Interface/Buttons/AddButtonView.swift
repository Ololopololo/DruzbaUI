//
//  AddButtonView.swift
//  Interface
//
//  Created by Владислав Положай on 29.07.2021.
//

import SwiftUI

struct AddButtonView: View {
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        Image("Base")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 378, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        HStack() {
                            Text("Добавить в список")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Image("plus")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                        .frame(width: 185, height: 26.18)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            })
        }
        .padding(.horizontal, 16)
        
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
