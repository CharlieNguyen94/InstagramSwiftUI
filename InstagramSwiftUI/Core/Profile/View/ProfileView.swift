import SwiftUI

struct ProfileView: View {

	let user: User

	var posts: [Post] {
		return Post.MOCK_POSTS.filter { $0.user?.username == user.username }
	}

	var body: some View {
		ScrollView {
			ProfileHeaderView(user: user)
			PostGridView(posts: posts)
		}
		.navigationTitle("Profile")
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .navigationBarTrailing) {
				Button {

				} label: {
					Image(systemName: "line.3.horizontal")
						.foregroundColor(.black)
				}
			}
		}
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileView(user: .MOCK_USERS[0])
	}
}
