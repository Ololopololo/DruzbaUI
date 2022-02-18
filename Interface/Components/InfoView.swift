//
//  InfoView.swift
//  Interface
//
//  Created by Владислав Положай on 02.08.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Информация")
            }
            .padding(2)
                HStack {
                    VStack {
                        Text("Информация")
                            .padding(2)
                        Text("Информация")
                            .padding(2)
                        Text("Информация")
                            .padding(2)
                        Text("Информация")
                            .padding(2)
                        Text("Информация")
                            .padding(2)
                        Text("Информация")
                            .padding(2)
                    }
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                    Spacer()
                    VStack {
                        Text("500")
                            .padding(2)
                        Text("500")
                            .padding(2)
                        Text("500")
                            .padding(2)
                        Text("500")
                            .padding(2)
                        Text("500")
                            .padding(2)
                        Text("500")
                            .padding(2)
                    }
                    .font(.system(size: 11))

                    
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .topLeading)
        .padding()
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
