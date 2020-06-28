
import SwiftUI

struct ContentView: View {

    let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(1..<11) { index in
                Text("Item \(index)")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(white: 1 / Double(index)))
                    .foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
