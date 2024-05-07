import SwiftUI

struct ContentView: View {
	@StateObject
	var viewModel = ViewModel()

	var body: some View {
		let _ = print("ContentView redraw")
		VStack {
			Button("Tap me") {
				viewModel.buttonTapped()
			}

			ForEach(viewModel.items, id: \.name) { item in
				GridItemView(item: item)
			}
		}
	}
}
