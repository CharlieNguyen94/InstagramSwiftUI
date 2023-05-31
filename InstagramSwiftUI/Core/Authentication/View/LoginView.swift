import SwiftUI

struct LoginView: View {
	@State private var email = ""
	@State private var password = ""

	var body: some View {
		NavigationStack {
			VStack {
				Spacer()

				instagramLogo

				VStack {
					emailTextField
					passwordTextField
				}

				forgotPasswordButton
				loginButton
				dividerComponent
				continueWithFacebookButton

				Spacer()

				Divider()

				CTA
			}
		}
	}

	var instagramLogo: some View {
		Image("instagram-text-logo")
			.resizable()
			.scaledToFill()
			.frame(width: 220, height: 100)
	}

	var emailTextField: some View {
		TextField("Enter your email", text: $email)
			.textInputAutocapitalization(.never)
			.modifier(IGTextFieldModifier())
	}

	var passwordTextField: some View {
		SecureField("Enter your password", text: $password)
			.modifier(IGTextFieldModifier())
	}

	var forgotPasswordButton: some View {
		Button {

		} label: {
			Text("Forgot Password?")
				.font(.footnote)
				.fontWeight(.semibold)
				.padding(.top)
				.padding(.trailing, 24)
		}
		.frame(maxWidth: .infinity, alignment: .trailing)
	}

	var loginButton: some View {
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
	}

	var dividerComponent: some View {
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
	}

	var continueWithFacebookButton: some View {
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
	}

	var CTA: some View {
		NavigationLink {
			AddEmailView()
				.navigationBarBackButtonHidden()
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

struct LoginView_Previews: PreviewProvider {
	static var previews: some View {
		LoginView()
	}
}
