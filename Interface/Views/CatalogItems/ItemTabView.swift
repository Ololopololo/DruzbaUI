//
//  ContentView.swift
//  CustomTabBarLBTA
//
//  Created by Brian Voong on 1/7/21.
//

import SwiftUI

struct ItemTabView: View {
    
    let tabBarImageNames = ["tab1", "tab3", "tab3", "tab4", "tab5"]
    let tabBarIconNames = ["Главная","Каталог","Карта","Корзина","Профиль"]
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 1
    
    var body: some View {
        
        VStack{
            ZStack{
                VStack{
                    switch selectedIndex {
                    case 0:
                        Text("Главная")
                    case 1:
                        ItemListView()
                    case 2:
                        Text("Карта")
                    case 3:
                        Text("Корзина")
                    default:
                        Text("Профиль")
                    }
                }
                
                VStack {
                    ZStack{
                        Image("Rectangle")
                            .resizable()
                            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 120)
                            .padding(.zero)
                        HStack {
                            ForEach(0..<5){ index in
                                Button(action: {
                                    selectedIndex = index
                                }, label: {
                                    Spacer()
                                    VStack{
                                        Image(tabBarImageNames[index])
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(selectedIndex == index ? Color(.black) : .gray)
                                        Text(tabBarIconNames[index])
                                            .font(.system(size: 11))
                                            .foregroundColor(selectedIndex == index ? Color(.black) : .gray)
                                    }
                                    Spacer()
                                })
                            }
                        }
                    }
                }
                .offset(x: 0, y: UIScreen.main.bounds.height/2.33)
            }
        }
    }
}

struct ItemTabView_Previews: PreviewProvider {
    static var previews: some View {
        ItemTabView()
    }
}

