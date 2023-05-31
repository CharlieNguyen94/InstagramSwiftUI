import SwiftUI

struct CreateUsernameView: View {
	@State private var username = ""

	var body: some View {
		VStack {
			SignUpTextComponentView(
				textFieldText: $username,
				title: "Create username",
				description: "Pick a username for your new account. You can always change it later.",
				textFieldPlaceholder: "Username"
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
