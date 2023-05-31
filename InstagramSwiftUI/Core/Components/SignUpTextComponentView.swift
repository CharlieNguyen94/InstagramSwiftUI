import SwiftUI

struct SignUpTextComponentView: View {
	@Environment(\.dismiss) var dismiss
	@Binding var textFieldText: String
	let title: String
	let description: String
	let textFieldPlaceholder: String
	let withSecureField: Bool

	var body: some View {
		VStack(spacing: 12) {
			titleView
			descriptionView
			textField
				.textInputAutocapitalization(.never)
				.modifier(IGTextFieldModifier())
		}
		.toolbar {
			ToolbarItem(placement: .navigationBarLeading) {
				Image(systemName: "chevron.left")
					.imageScale(.large)
					.onTapGesture {
						dismiss()
					}
			}
		}
	}

	var titleView: some View {
		Text(title)
			.font(.title2)
			.fontWeight(.bold)
			.padding(.top)
	}

	var descriptionView: some View {
		Text(description)
			.font(.footnote)
			.foregroundColor(.gray)
			.multilineTextAlignment(.center)
			.padding(.horizontal, 24)
	}

	@ViewBuilder
	var textField: some View {
		if withSecureField {
			SecureField(textFieldPlaceholder, text: $textFieldText)
		} else {
			TextField(textFieldPlaceholder, text: $textFieldText)
		}
	}
}

struct SignUpTextComponentView_Previews: PreviewProvider {
	static var previews: some View {
		SignUpTextComponentView(
			textFieldText: .constant(""),
			title: "Add Your Email",
			description: "You'll use this email to sign in to your account",
			textFieldPlaceholder: "Enter your email",
			withSecureField: false
		)
	}
}
