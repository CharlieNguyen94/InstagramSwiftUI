import SwiftUI

struct ProfileView: View {

	private let gridItems: [GridItem] = [
		.init(.flexible(), spacing: 1),
		.init(.flexible(), spacing: 1),
		.init(.flexible(), spacing: 1)
	]

	var body: some View {
		NavigationStack {
			ScrollView {
				VStack(spacing: 10) {
					HStack {
						Image("luffy")
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
						Text("Monkey D. Luffy")
							.font(.footnote)
							.fontWeight(.semibold)

						Text("Pirate King")
							.font(.footnote)

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

				gridView
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

	var gridView: some View {
		LazyVGrid(columns: gridItems, spacing: 1) {
			ForEach(0...15, id: \.self) { index in
				Image("luffy")
					.resizable()
					.scaledToFill()
			}
		}
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileView()
	}
}
