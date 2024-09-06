//
//  LoginView.swift
//  Authentication
//
//  Created by Alfredo Amezcua on 9/5/24.
//

import SwiftUI


struct LoginView: View{
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        Text("Hi World")
        NavigationStack {
            VStack {
                
                // image
                Image("")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.vertical, 32)
                // form fields
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Address", placeholder: "xyz@example.com")
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //sign in button
                
                Button {
                    print("Log user in")
                } label: {
                    HStack{
                        Text("Sign In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    
                }
                
                .background(Color(.systemGreen))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                //sign up button
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 3){
                        Text("Want to create an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                        
                    }
                    .font(.system(size:14))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
