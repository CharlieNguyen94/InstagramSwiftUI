import SwiftUI

struct CurrentUserProfileView: View {

	let user: User

	var posts: [Post] {
		return Post.MOCK_POSTS.filter { $0.user?.username == user.username }
	}

	var body: some View {
		NavigationStack {
			ScrollView {
				ProfileHeaderView(user: user)
				PostGridView(user: user)
			}
			.navigationTitle("Profile")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						AuthService.shared.signOut()
					} label: {
						Image(systemName: "line.3.horizontal")
							.foregroundColor(.black)
					}
				}
			}
		}
	}
}

struct CurrentUserProfileView_Previews: PreviewProvider {
	static var previews: some View {
		CurrentUserProfileView(user: User.MOCK_USERS[0])
	}
}
