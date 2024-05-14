import SwiftUI
import Firebase
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    @State private var registrationSuccess = false
    var body: some View {
        NavigationView {
            VStack {
                Content
                NavigationLink(destination: ContentView(), isActive: $userIsLoggedIn) {
                    EmptyView()
                }
            }
        }
    }
    
    var Content: some View {
        ZStack {
            Color.black
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            
            VStack(spacing: 30) {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {}
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {}
                
                Button("Sign Up") {
                    register()
                }
                .bold()
                .frame(width: 200, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.linearGradient(colors: [.pink, .red], startPoint: .top, endPoint: .bottomTrailing))
                )
                .foregroundColor(.white)
                .padding(.top)
                .offset(y: 100)
                
                Button("Login") {
                    login()
                }
                .padding(.top)
                .foregroundColor(.white)
                .offset(y: 100)
                
                // Display message if registration is successful
                if registrationSuccess {
                    Text("Account has been added")
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            .frame(width: 350)
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        userIsLoggedIn = true
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                // Set registrationSuccess flag to true upon successful registration
                registrationSuccess = true
                userIsLoggedIn = false

            }
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                // Navigate to ContentView upon successful login
                userIsLoggedIn = true
                registrationSuccess = false

            }
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        Text("Welcome to ContentView")
//    }
//}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        if shouldShow {
            return AnyView(
                ZStack(alignment: alignment) {
                    AnyView(self)
                    AnyView(placeholder())
                }
                .transition(.opacity)
            )
        } else {
            return AnyView(self)
        }
    }
}
