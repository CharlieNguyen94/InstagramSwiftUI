import SwiftUI

struct SearchView: View {
	@State private var searchText = ""

	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVStack(spacing: 12) {
					ForEach(User.MOCK_USERS) { user in
						HStack {
							Image(user.profileImage ?? "")
								.resizable()
								.scaledToFill()
								.frame(width: 40, height: 40)
								.clipShape(Circle())

							VStack(alignment: .leading) {
								Text(user.username)
								if let fullname = user.fullname {
									Text(fullname)
								}
							}
							.font(.footnote)

							Spacer()
						}
						.padding(.horizontal)
					}
				}
				.padding(.top)
				.searchable(text: $searchText, prompt: "Search...")
			}
			.navigationTitle("Explore")
			.navigationBarTitleDisplayMode(.inline)
		}
	}
}

struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}
