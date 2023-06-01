import SwiftUI

struct ProfileHeaderView: View {
	let user: User
	@State private var showEditProfile = false

	var body: some View {
		VStack(spacing: 10) {
			HStack {
				Image(user.profileImageUrl ?? "")
					.resizable()
					.scaledToFill()
					.frame(width: 80, height: 80)
					.clipShape(Circle())

				Spacer()

				HStack(spacing: 40) {
					UserStatView(value: 3, title: "Posts")

					UserStatView(value: 12, title: "Followers")

					UserStatView(value: 24, title: "Following")
				}
				.padding(.trailing)
			}
			.padding(.leading)

			VStack(alignment: .leading, spacing: 4) {
				if let fullname = user.fullname {
					Text(fullname)
						.font(.footnote)
						.fontWeight(.semibold)
				}

				if let bio = user.bio {
					Text(bio)
						.font(.footnote)
				}
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.horizontal)

			Button {
				if user.isCurrentUser {
					showEditProfile.toggle()
				}

			} label: {
				HStack {
					Spacer()
					Text(user.isCurrentUser ? "Edit Profile" : "Follow")
						.font(.subheadline)
						.fontWeight(.semibold)
						.frame(height: 32)
						.foregroundColor(user.isCurrentUser ? .black : .white)
					Spacer()
				}
				.background(
					RoundedRectangle(cornerRadius: 6)
						.fill(user.isCurrentUser ? .white : Color(.systemBlue))
						.overlay(
							RoundedRectangle(cornerRadius: 6)
								.stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
						)
				)
				.padding(.horizontal)
			}


			Divider()
		}
		.fullScreenCover(isPresented: $showEditProfile) {
			EditProfileView(user: user)
		}
	}
}

struct ProfileHeaderView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileHeaderView(user: User.MOCK_USERS[0])
	}
}
