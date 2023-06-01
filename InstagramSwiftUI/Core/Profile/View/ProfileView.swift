import SwiftUI

struct ProfileView: View {

	let user: User

	var body: some View {
		ScrollView {
			ProfileHeaderView(user: user)
			PostGridView(user: user)
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
