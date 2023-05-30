import SwiftUI

struct FeedCell: View {
	var body: some View {
		VStack {
			HStack {
				Image("luffy")
					.resizable()
					.scaledToFill()
					.frame(width: 40, height: 40)
					.clipShape(Circle())

				Text("Luffy")
					.font(.footnote)
					.fontWeight(.semibold)

				Spacer()
			}
			.padding(.leading, 8)

			Image("luffy")
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

			Text("23 likes")
				.font(.footnote)
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 10)
				.padding(.top, 4)

			HStack {
				Text("Luffy ")
					.fontWeight(.semibold)
				+
				Text("This is test caption")
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
		FeedCell()
	}
}
