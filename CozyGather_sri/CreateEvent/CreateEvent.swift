import SwiftUI

struct CreateEvent: View {
    @State private var eventName: String = "Event name"
    @State private var venueAddress: String = "Address"
    @State private var price: String = "Price"
    @State private var selectedDate = Date()
    @State private var isDateAndTimeVisible = false

    var body: some View {
        VStack {
            Text("Create Event")
                .font(.largeTitle)
                .bold()
                .padding()

            // Event Name
            TextField("Event Name", text: $eventName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Venue Address
            Text("Venue Address")
                .font(.headline)
                .padding(.top)

            TextField("Address", text: $venueAddress)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Price
            Text("Price")
                .font(.headline)
                .padding(.top)

            TextField("Price", text: $price)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Date and Time
            Text("Date and Time")
                .font(.headline)
                .padding(.top)

            HStack {
                Button(action: {
                    isDateAndTimeVisible.toggle()
                }) {
                    Image(systemName: "calendar")
                        .foregroundColor(.blue)
                }
                .sheet(isPresented: $isDateAndTimeVisible) {
                    DateAndTime()
                }

                TextField("Select Date and Time", value: $selectedDate, formatter: dateFormatter)
                    .disabled(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()

            // Create Event Button
            Button("Create Event") {
                // Add action for creating the event
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()

            Spacer() // Leave space for the navigation control bar
        }
        .padding()
    }

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
}

struct CreateEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateEvent()
    }
}

