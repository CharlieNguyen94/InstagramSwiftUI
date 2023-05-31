import SwiftUI

struct AddEmailView: View {
	@State private var email = ""

	var body: some View {
		VStack {
			SignUpTextComponentView(
				textFieldText: $email,
				title: "Add your email",
				description: "You'll use this email to sign in to your account",
				textFieldPlaceholder: "Enter your email"
			)

			CTA

			Spacer()
		}
	}

	var CTA: some View {
		NavigationLink {
			CreateUsernameView()
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
