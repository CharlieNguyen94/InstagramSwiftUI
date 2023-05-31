import SwiftUI

struct ContentView: View {
	@StateObject var viewModel = ContentViewModel()

    var body: some View {
		Group {
			if viewModel.userSession == nil {
				LoginView()
			} else {
				MainTabView()
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
