import SwiftUI

struct LoginView: View {
	@State private var email = ""
	@State private var password = ""

	var body: some View {
		NavigationStack {
			VStack {
				Spacer()

				Image("instagram-text-logo")
					.resizable()
					.scaledToFill()
					.frame(width: 220, height: 100)

				VStack {
					TextField("Enter your email", text: $email)
						.textInputAutocapitalization(.never)
						.font(.subheadline)
						.padding(12)
						.background(Color(.systemGray6))
						.cornerRadius(10)
						.padding(.horizontal, 24)

					SecureField("Enter your password", text: $password)
						.font(.subheadline)
						.padding(12)
						.background(Color(.systemGray6))
						.cornerRadius(10)
						.padding(.horizontal, 24)
				}

				Button {

				} label: {
					Text("Forgot Password?")
						.font(.footnote)
						.fontWeight(.semibold)
						.padding(.top)
						.padding(.trailing, 24)
				}
				.frame(maxWidth: .infinity, alignment: .trailing)

				Button {

				} label: {
					Text("Login")
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.white)
						.frame(width: 360, height: 44)
						.background(Color(.systemBlue))
						.cornerRadius(8)
				}
				.padding(.vertical)

				HStack {
					Rectangle()
						.frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)

					Text("OR")
						.font(.footnote)
						.fontWeight(.semibold)

					Rectangle()
						.frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
				}
				.foregroundColor(.gray)

				HStack {
					Image("facebook-logo")
						.resizable()
						.frame(width: 20, height: 20)

					Text("Continue with Facebook")
						.font(.footnote)
						.fontWeight(.semibold)
						.foregroundColor(Color(.systemBlue))
				}
				.padding(.top, 8)

				Spacer()

				Divider()

				NavigationLink {
					Text("Sign up")
				} label: {
					HStack(spacing: 4) {
						Text("Don't have an account?")

						Text("Sign up")
							.fontWeight(.semibold)
					}
					.font(.footnote)
				}
				.padding(.vertical, 16)
			}
		}
	}
}

struct LoginView_Previews: PreviewProvider {
	static var previews: some View {
		LoginView()
	}
}
