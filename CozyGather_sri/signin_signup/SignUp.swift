//
//  SignUp.swift
//  CozyGather_sri
//
//  Created by user2 on 25/01/24.
//
//
//  SignIn.swift
//  CozyGather_sri
//
//  Created by user2 on 25/01/24.
//
import SwiftUI

struct SignUp: View {
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var rememberMe = false

    var body: some View {
        ZStack {
            
            
            
            HStack {
                        Button(action: {
                            // Add action for when the back button is tapped
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(.blue) // Adjust color as needed
                        }.position(CGPoint(x: 30.0, y: 80.0))

                        Spacer() // Add spacing between the buttons

                        Label("Sign Up", systemImage: "person.fill")
                            .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                            .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                            .padding(.bottom, 20)
                            .position(CGPoint(x: -60, y: 90)) // Adjust spacing as needed
                    }
                    .padding()
            
            
            //Full Name
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color.white)
                                .frame(width: 317, height: 56)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                                )

                            TextField("Full Name", text: $emailText)
                                .padding(.horizontal, 10)
                                .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                        }
                        .padding(.bottom, 20)
                        .position(CGPoint(x: 230.0, y: 180.0))
            
            
            
// enter email
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )

                TextField("Enter your email", text: $emailText)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)
            .position(CGPoint(x: 230.0, y: 260.0))

            
            
//enter password
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )

                
                TextField("Enter your password", text: $passwordText)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)
            .position(CGPoint(x: 230.0, y: 340.0))
            
            
//enter password
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )

                
                TextField("confirm your password", text: $passwordText)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)
            .position(CGPoint(x: 230.0, y: 420.0))

//toggle rememeber me
            
            
            VStack {
                Toggle("Remember Me", isOn: $rememberMe)
                    .padding(.horizontal, 110) // Adjust the negative value to decrease horizontal spacing
                            .position(CGPoint(x: 100.0, y: 500.0))
            }
            
            
            
//forgot password
            Text("Forgot Password?")
              .font(Font.custom("AirbnbCereal_W_Md", size: 14))
              .multilineTextAlignment(.trailing)
              .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
              .position(CGPoint(x: 300.0, y: 500.0))
            
            
//signin
            Button(action: {
                        // Add action to be performed when the button is tapped
                        // For example, you can add navigation code here
                    }) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.purple)
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                    }
                    .position(CGPoint(x: 175.0, y: 550.0))
                    .padding(20)
            
            
//google and apple login
            VStack(spacing: -20) {
                // Login with Google Button
                Button(action: {
                    // Add action for Google login
                }) {
                    HStack {
                        Image("google-icon") // Add your Google icon image
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Login with Google")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                    )
                }
                .padding(20)

                // Login with Apple Button
                Button(action: {
                    // Add action for Apple login
                }) {
                    HStack {
                        Image("apple-icon") // Add your Apple icon image
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Login with Apple")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.black, lineWidth: 1)
                    )
                }
                .padding(20)
            }
            .padding(10)
            .position(CGPoint(x: 200.0, y: 680.0))
            
            
//dont have an account?
                        Text("Already have an account?")
                          .font(Font.custom("AirbnbCereal_W_Md", size: 14))
                          .multilineTextAlignment(.trailing)
                          .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                          .position(CGPoint(x: 130.0, y: 780.0))
            
//Sign Up
            
            VStack {
                
                Text("Sign In")
                    .foregroundColor(.blue)
                    .underline()
                    .onTapGesture {
                        // Add action for when the "Sign Up" label is tapped
                    }
            }
            .padding()
            .position(CGPoint(x: 270.0, y: 780.0))

            

        }
        .frame(width: 393, height: 852)
        .background(Color.white)
        .cornerRadius(48)
    }
}



struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
