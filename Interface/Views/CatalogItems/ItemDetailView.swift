//
//  ItemDetailView.swift
//  Interface
//
//  Created by Владислав Положай on 29.07.2021.
//

import SwiftUI
import UIKit
struct ItemDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var catalogItem : CatalogData
    var body: some View {
        ScrollView {
            VStack {
                ItemImageView(image: catalogItem.image)
                DescriptionView(catalogItem: catalogItem)
                AddButtonView()
                InfoView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("custombackbutton")
        }, trailing: CartButton())
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(catalogItem: catalogItems[0])
    }
}
