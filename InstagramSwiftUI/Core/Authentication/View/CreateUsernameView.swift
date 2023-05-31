import SwiftUI

struct CreateUsernameView: View {
	@EnvironmentObject var viewModel: RegistrationViewModel

	var body: some View {
		VStack {
			SignUpTextComponentView(
				textFieldText: $viewModel.username,
				title: "Create username",
				description: "Pick a username for your new account. You can always change it later.",
				textFieldPlaceholder: "Username",
				withSecureField: false
			)

			CTA

			Spacer()
		}
	}

	var CTA: some View {
		NavigationLink {
			CreatePasswordView()
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

struct CreateUsernameView_Previews: PreviewProvider {
	static var previews: some View {
		CreateUsernameView()
	}
}
