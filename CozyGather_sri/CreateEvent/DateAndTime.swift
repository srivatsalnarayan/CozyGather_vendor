import SwiftUI

struct DateAndTime: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select Date and Time", selection: $selectedDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()

            Spacer()

            Button("Done") {
                // Add action for when the user is done selecting date and time
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
        }
        .padding()
        .navigationBarHidden(true) // Hide the navigation bar
    }
}

struct DateAndTime_Previews: PreviewProvider {
    static var previews: some View {
        DateAndTime()
    }
}
