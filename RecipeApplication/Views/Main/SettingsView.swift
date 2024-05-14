import SwiftUI

struct SettingsView: View {
    // Add a binding for the presentation mode to dismiss the SettingsView
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("v1.0.0")
                Spacer()
                
                // Add the Logout button
                Button(action: {
                    // Perform logout action here
                    // For example, you could clear user authentication state
                    
                    // Dismiss the SettingsView and navigate back to LoginView
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Logout")
                        .foregroundColor(.red) // Customize the button appearance
                }
            }
            .padding()
            .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
