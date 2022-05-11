import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                FirstView()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
