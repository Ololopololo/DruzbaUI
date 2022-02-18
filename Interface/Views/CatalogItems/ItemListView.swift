//
//  CatalogItemList.swift
//  Interface
//
//  Created by Владислав Положай on 26.07.2021.
//

import SwiftUI
import UIKit
struct ItemListView: View {
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        //coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .systemGroupedBackground
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .red
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "SystemFont", size: 17)!]
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(catalogItems){ catalogItem in
                    ItemRowView(catalogItem: catalogItem)
                    ZStack {
                        NavigationLink(destination: ItemDetailView(catalogItem: catalogItem)){
                            EmptyView()
                        }
                        .opacity(0.0)
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal, -5.0)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle(("Каталог"),displayMode: .inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    SearchButton()
                    CartButton()
                }
            }
        }
    }
    
}


struct CatalogItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
    }
}
