import SwiftUI

struct CompleteSignUpView: View {
	var body: some View {
		VStack(spacing: 12) {
			title
			description
			CTA
		}
	}

	var title: some View {
		Text("Welcome to Instagram, Luffy")
			.font(.title2)
			.fontWeight(.bold)
			.padding(.top)
	}

	var description: some View {
		Text("Click below to complete registration and start using Instagram.")
			.font(.footnote)
			.foregroundColor(.black)
			.multilineTextAlignment(.center)
			.padding(.horizontal, 24)
	}

	var CTA: some View {
		Button {

		} label: {
			Text("Complete Sign Up")
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

struct CompleteSignUpView_Previews: PreviewProvider {
	static var previews: some View {
		CompleteSignUpView()
	}
}
