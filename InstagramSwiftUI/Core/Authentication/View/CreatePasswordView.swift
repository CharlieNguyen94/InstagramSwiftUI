import SwiftUI

struct CreatePasswordView: View {
	@EnvironmentObject var viewModel: RegistrationViewModel

	var body: some View {
		VStack {
			SignUpTextComponentView(
				textFieldText: $viewModel.password,
				title: "Create a password",
				description: "Your password must be at least 6 characters in length.",
				textFieldPlaceholder: "Password",
				withSecureField: true
			)

			CTA

			Spacer()
		}
	}

	var CTA: some View {
		NavigationLink {
			CompleteSignUpView()
				.navigationBarBackButtonHidden()
		} label: {
			Text("Next")
				.font(.subheadline)
				.fontWeight(.semibold)
				.foregroundColor(.white)
				.frame(width: 360, height: 44)
				.background(Color(.systemBlue))
				.cornerRadius(8)
		}
		.padding(.vertical)
	}
}

struct CreatePasswordView_Previews: PreviewProvider {
	static var previews: some View {
		CreatePasswordView()
	}
}
