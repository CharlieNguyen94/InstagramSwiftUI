import SwiftUI

struct ProfileHeaderView: View {
	let user: User

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

			} label: {
				HStack {
					Spacer()
					Text("Edit Profile")
						.font(.subheadline)
						.fontWeight(.semibold)
						.frame(height: 32)
						.foregroundColor(.black)
					Spacer()
				}
				.background(
					RoundedRectangle(cornerRadius: 6)
						.stroke(.gray, lineWidth: 1)
				)
				.padding(.horizontal)
			}


			Divider()
		}
	}
}

struct ProfileHeaderView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileHeaderView(user: User.MOCK_USERS[0])
	}
}
