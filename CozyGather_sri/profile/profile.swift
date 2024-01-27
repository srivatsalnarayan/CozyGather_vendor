
import SwiftUI

struct Profile: View {
    @State private var emailText = ""
    @State private var PhoneNumber = ""
    @State private var Address = ""
    @State private var isToggleOn = false
    @State private var selectedService = "Services"
    @State private var isPopoverVisible = false

    private let services = ["Catering", "Bakery", "Music", "Decor"]

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Button(action: {
                    // Add action for the back button
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                Spacer()

                Text("Profile")
                    .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))

                Spacer()
            }
            .padding()
            .background(Color.white)
            .offset(y: 20) // Adjust the offset as needed

            // Image and Label
            Image("noti2") // Replace "profileImage" with the name of your asset
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.bottom, 10)

            Text("User Name") // Placeholder label
                .font(.headline)
                .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))

            // Edit Profile Button
            Button("Edit Profile") {
                // Add action for editing profile
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)

            // Phone Number and Address
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )

                TextField("Phone Number", text: $PhoneNumber)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)

            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )

                TextField("Address", text: $Address)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)

            // Toggle for Open to Negotiable Rates
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundColor(Color.white)
                .cornerRadius(12)
                .overlay(
                    HStack {
                        Text("$")
                            .font(.headline)
                            .foregroundColor(.black)

                        Text("Open to negotiable rates")
                            .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                            .padding(.horizontal, 10)

                        Spacer()

                        Toggle("", isOn: $isToggleOn)
                            .labelsHidden()
                    }
                    .padding()
                )
                .padding(.bottom, 20)

            // Services
            VStack {
                Button {
                    isPopoverVisible.toggle()
                } label: {
                    HStack {
                        Image(systemName: "book.fill")
                            .foregroundColor(.blue)
                        Text(selectedService)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
                .popover(isPresented: $isPopoverVisible, arrowEdge: .bottom) {
                    VStack {
                        ForEach(services, id: \.self) { service in
                            Button(action: {
                                selectedService = service
                                isPopoverVisible.toggle()
                            }) {
                                Text(service)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
            }
            .padding(.bottom, 20)

            Spacer() // Leave space at the bottom for navigation control bar
        }
        .padding(.horizontal)
        .background(Color.white)
        .navigationBarHidden(true) // Hide the navigation bar
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
