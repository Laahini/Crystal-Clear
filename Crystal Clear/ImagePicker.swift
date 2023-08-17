import PhotosUI
import SwiftUI

struct ImagePicker: View {
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @ObservedObject var viewModel: OrganizationInfoViewModel
    
    var body: some View {
        VStack {

            PhotosPicker("Choose Profile Picture", selection: $avatarItem, matching: .images)

            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)

            }
            
        }
        
        .onChange(of: avatarItem) { _ in
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        let profileImage = avatarItem
                        return
                    }
                }

                print("Failed")
            }
        }
    }
}
struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(viewModel: OrganizationInfoViewModel())
    }
}

