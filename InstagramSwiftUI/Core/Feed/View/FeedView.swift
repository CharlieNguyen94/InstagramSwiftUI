import SwiftUI

struct FeedView: View {
	@StateObject var viewModel = FeedViewModel()

	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVStack(spacing: 32) {
					ForEach(viewModel.posts) { post in
						FeedCell(post: post)
					}
				}
				.padding(.top, 8)
			}
			.refreshable {
				Task { try await viewModel.fetchPosts() }
			}
			.navigationTitle("Feed")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Image("instagram-text-logo")
						.resizable()
						.scaledToFill()
						.frame(width: 100, height: 32)
						.padding(.leading, -16)
				}

				ToolbarItem(placement: .navigationBarTrailing) {
					Image(systemName: "paperplane")
						.imageScale(.large)
				}
			}
		}
	}
}

struct FeedView_Previews: PreviewProvider {
	static var previews: some View {
		FeedView()
	}
}
