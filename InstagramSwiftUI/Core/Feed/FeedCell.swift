import SwiftUI

struct FeedCell: View {
	let post: Post

	var body: some View {
		VStack {
			HStack {
				if let user = post.user {
					Image(user.profileImageUrl ?? "")
						.resizable()
						.scaledToFill()
						.frame(width: 40, height: 40)
						.clipShape(Circle())

					Text(user.username)
						.font(.footnote)
						.fontWeight(.semibold)
				}

				Spacer()
			}
			.padding(.leading, 8)

			Image(post.imageUrl)
				.resizable()
				.scaledToFill()
				.frame(height: 400)
				.clipShape(Rectangle())

			HStack(spacing: 16) {
				Button {

				} label: {
					Image(systemName: "heart")
						.imageScale(.large)
				}

				Button {

				} label: {
					Image(systemName: "bubble.right")
						.imageScale(.large)
				}

				Button {

				} label: {
					Image(systemName: "paperplane")
						.imageScale(.large)
				}

				Spacer()
			}
			.padding(.leading, 8)
			.padding(.top, 4)
			.foregroundColor(.black)

			Text("\(post.likes) likes")
				.font(.footnote)
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 10)
				.padding(.top, 4)

			HStack {
				Text("\(post.user?.username ?? "") ")
					.fontWeight(.semibold)
				+
				Text(post.caption)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			.font(.footnote)
			.padding(.leading, 10)
			.padding(.top, 2)

			Text("6hrs ago")
				.font(.footnote)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 10)
				.padding(.top, 2)
				.foregroundColor(.gray)
		}
	}
}

struct FeedCell_Previews: PreviewProvider {
	static var previews: some View {
		FeedCell(post: .MOCK_POSTS[0])
	}
}
