import SwiftUI
import PhotosUI

struct UploadPostView: View {
	@State private var caption = ""
	@State private var imagePickerPresented = false
	@StateObject var viewModel = UploadPostViewModel()
	@Binding var tabIndex: Int

	var body: some View {
		VStack {
			HStack {
				Button {
					caption = ""
					viewModel.selectedImage = nil
					viewModel.postImage = nil
					tabIndex = 0
				} label: {
					Text("Cancel")
				}

				Spacer()

				Text("New Post")
					.fontWeight(.semibold)

				Spacer()

				Button {

				} label: {
					Text("Upload")
						.fontWeight(.semibold)
				}
			}

			HStack(spacing: 8) {
				if let image = viewModel.postImage {
					image
						.resizable()
						.scaledToFill()
						.frame(width: 100, height: 100)
						.clipped()

				}
				TextField("Enter your caption...", text: $caption, axis: .vertical)
			}

			Spacer()
		}
		.onAppear {
			imagePickerPresented.toggle()
		}
		.photosPicker(
			isPresented: $imagePickerPresented,
			selection: $viewModel.selectedImage
		)
		.padding(.horizontal)
	}
}

struct UploadPostView_Previews: PreviewProvider {
	static var previews: some View {
		UploadPostView(tabIndex: .constant(0))
	}
}