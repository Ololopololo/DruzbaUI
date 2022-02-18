import SwiftUI

struct ItemImageView: View {
    
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 232, height: 192)
            .padding(.bottom, UIScreen.main.bounds.height * 0.01)
    }
}

struct ItemImage_Previews: PreviewProvider {
    static var previews: some View {
            ItemImageView(image: Image("potato"))
    }
}
