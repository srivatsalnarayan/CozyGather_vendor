// MainOrders.swift
import SwiftUI

struct MainOrders: View {
    
    @State private var searchText: String = ""
    @State private var isFilterScreenPresented = false


    var body: some View {
        VStack {
   
            
            HStack {
                Button(action: {
                    // Add action for when the back button is tapped
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.blue) // Adjust color as needed
                }
                .position(CGPoint(x: 30.0, y: 10.0))

                Spacer()

                Label("Orders", systemImage: "")
                    .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                    .padding(.bottom, 20)
                    .position(CGPoint(x: -30, y: 20))

                Spacer()

                Button(action: {
                    // Add action for when the notifications button is tapped
                }) {
                    Image(systemName: "bell")
                        .font(.title)
                        .foregroundColor(.blue) // Adjust color as needed
                }
                .position(CGPoint(x: 70.0, y: 10.0))
            }
            .padding()

            TextField("Search", text: $searchText)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                .padding(.horizontal)
                .position(CGPoint(x: 195.0, y: -80.0))
            
            
            VStack {
                HStack {
                    // ... (existing code)

                    // Filter Button
                    Button(action: {
                        isFilterScreenPresented.toggle()
                    }) {
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: 80, height: 40)
                            .overlay(
                                Text("Filter")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                    }
                    .padding(.horizontal)
                }
                .padding()
                .position(CGPoint(x: 300.0, y: 100.0))

            }
            .sheet(isPresented: $isFilterScreenPresented) {
                FilterScreen()
            }.position(CGPoint(x: 200.0, y: -220.0))
            
            VStack {
                NavigationLink(destination: ViewDetails()) {
                    CustomCard(imageName: "order1", date: "January 25, 2024", description: "Description 1", hyperlinkText: "View Details")
                }
                NavigationLink(destination: ViewDetails()) {
                    CustomCard(imageName: "order2", date: "January 26, 2024", description: "Description 2", hyperlinkText: "View Details")
                }
                NavigationLink(destination: ViewDetails()) {
                    CustomCard(imageName: "order3", date: "January 27, 2024", description: "Description 3", hyperlinkText: "View Details")
                }
                NavigationLink(destination: ViewDetails()) {
                    CustomCard(imageName: "order4", date: "January 28, 2024", description: "Description 4", hyperlinkText: "View Details")
                }
                

            }
            .frame(width: 400, height: 10)
            .padding()
            .position(CGPoint(x: 190.0, y: -120.0))
        }
        
        
        
        
    }
}

struct MainOrders_Previews: PreviewProvider {
    static var previews: some View {
        MainOrders()
    }
}


