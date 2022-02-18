//
//  DescriptionView.swift
//  Interface
//
//  Created by Владислав Положай on 02.08.2021.
//

import SwiftUI

struct DescriptionView: View {
    var catalogItem : CatalogData
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(catalogItem.description)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(width: 223, height: 48, alignment: .topLeading)
                    Spacer()
                    Text("Россия , 220 гр")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(width: 223, height: 20, alignment: .topLeading)
                        .foregroundColor(.gray)
                }
                .frame(height: 76, alignment: .leading)
                Spacer()
                VStack{
                    ZStack{
                        VStack {
                            Image("Green")
                                .resizable()
                                .frame(width: 46, height: 24)
                        }
                        .frame(width: 104, height: 78,alignment: .bottomTrailing)
                        VStack {
                            Text(catalogItem.salePrice + " Р")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .frame(width: 104, height: 20, alignment: .trailing)
                            Text(catalogItem.price + " Р")
                                .font(.system(size: 13))
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                                .strikethrough()
                                .frame(width: 104, height: 20, alignment: .trailing)
                            Text(catalogItem.sale)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .frame(width: 104, height: 20, alignment: .bottomTrailing)
                                .offset(x: -5.5, y: 5.5)
                        }
                        .frame(width: 104, height: 78,alignment: .trailing)
                    }
                }
            }
            .padding()
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 100)
            
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(catalogItem: catalogItems[0])
    }
}
