//
//  CatalogItemView.swift
//  Interface
//
//  Created by Владислав Положай on 26.07.2021.
//

import SwiftUI

struct ItemRowView: View {
    var catalogItem : CatalogData
    
    var body: some View {
        HStack {
            catalogItem.image
                .resizable()
                .frame(width: 80, height: 80, alignment: .leading)
            Spacer()
            VStack {
                Text(catalogItem.name)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .frame(width: 142, height: 40, alignment: .topLeading)
                Spacer()
                Text("Россия , 220 гр")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .frame(width: 142, height: 18, alignment: .topLeading)
                    .foregroundColor(.gray)
            }
            .frame(width: 142, height: 62, alignment: .leading)
            Spacer()
            VStack{
                ZStack{
                    VStack {
                        Image("Green")
                            .resizable()
                            .frame(width: 46, height: 24)
                    }
                    .frame(width: 57, height: 64,alignment: .bottomLeading)
                    
                    VStack {
                        Text(catalogItem.salePrice)
                            .font(.system(size: 14))
                            .fontWeight(.medium)
                            .frame(width: 57, height: 20, alignment: .leading)
                        Text(catalogItem.price)
                            .font(.system(size: 13))
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                            .strikethrough()
                            .frame(width: 57, height: 20, alignment: .leading)
                        Text(catalogItem.sale)
                            .font(.system(size: 13))
                            .fontWeight(.bold)
                            .frame(width: 46, height: 24, alignment: .leading)
                            .padding(.leading, 8)
                    }
                }
            }
            VStack {
                Image("circleplus")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.trailing)
            }

        }
        .frame(maxWidth: UIScreen.main.bounds.width , maxHeight: 80)
    }
}
struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
            ItemRowView(catalogItem: catalogItems[0])
    }
}

