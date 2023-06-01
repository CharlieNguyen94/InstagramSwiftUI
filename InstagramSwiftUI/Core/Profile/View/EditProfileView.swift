import SwiftUI
import PhotosUI

struct EditProfileView: View {
	@Environment(\.dismiss) var dismiss
	@StateObject var viewModel = EditProfileViewModel()

	var body: some View {
		VStack {
			VStack {
				headerView
				Divider()
			}
			photosPickerView

			editTextFields

			Spacer()
		}
    }

	var headerView: some View {
		ZStack {
			Text("Edit Profile")
				.font(.subheadline)
				.fontWeight(.semibold)
			HStack {
				Button("Cancel") {
					dismiss()
				}

				Spacer()

				Button {

				} label: {
					Text("Done")
						.font(.subheadline)
						.fontWeight(.bold)
				}
			}
		}
		.padding(.horizontal)
	}

	var photosPickerView: some View {
		PhotosPicker(selection: $viewModel.selectedImage) {
			VStack {
				if let image = viewModel.profileImage {
					image
						.resizable()
						.foregroundColor(.white)
						.background(.gray)
						.clipShape(Circle())
						.frame(width: 80, height: 80)
				} else {
					Image(systemName: "person")
						.resizable()
						.foregroundColor(.white)
						.background(.gray)
						.clipShape(Circle())
						.frame(width: 80, height: 80)
				}

				Text("Edit profile picture")
					.font(.footnote)
					.fontWeight(.semibold)

				Divider()
			}
		}
		.padding(.vertical, 8)
	}

	var editTextFields: some View {
		VStack {
			EditProfileRowView(
				title: "Name",
				placeholder: "Enter your name...",
				text: $viewModel.fullname
			)

			EditProfileRowView(
				title: "Bio",
				placeholder: "Enter your bio...",
				text: $viewModel.bio
			)
		}
	}
}

struct EditProfileRowView: View {
	let title: String
	let placeholder: String
	@Binding var text: String

	var body: some View {
		HStack {
			Text(title)
				.padding(.leading, 8)
				.frame(width: 100, alignment: .leading)

			VStack {
				TextField(placeholder, text: $text)

				Divider()
			}
		}
		.font(.subheadline)
		.frame(height: 36)
	}
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
