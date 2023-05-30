import SwiftUI

struct SearchView: View {
	@State private var searchText = ""

	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVStack(spacing: 12) {
					ForEach(0...15, id:\.self) { user in
						HStack {
							Image("luffy")
								.resizable()
								.scaledToFill()
								.frame(width: 40, height: 40)
								.clipShape(Circle())

							VStack(alignment: .leading) {
								Text("luffy")
								Text("Monkey D. Luffy")
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
