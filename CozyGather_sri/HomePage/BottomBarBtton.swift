import SwiftUI

struct BottomNavigationBar: View {
    var body: some View {
        HStack {
            NavigationLink(destination: HomePageView()) {
                Image(systemName: "house")
                Text("Home")
            }
            .padding()

            NavigationLink(destination: MainOrders()) {
                Image(systemName: "calendar")
                Text("Calendar")
            }
            .padding()

            NavigationLink(destination: messagelist()) {
                Image(systemName: "bag")
                Text("Vendor")
            }
            .padding()

            NavigationLink(destination: Profile()) {
                Image(systemName: "person.2")
                Text("People")
            }
            .padding()


        }
        .foregroundColor(.blue)
        .background(Color.white)
        .border(Color.gray, width: 0.5)
        .padding(.horizontal)
    }
}
