//
//  detail.swift
//  CozyGather_sri
//
//  Created by user2 on 25/01/24.
//

import SwiftUI

struct detail: View {
    
    @State private var emailText = ""
    @State private var PhoneNumber = ""
    @State private var EmailAddress = ""
    @State private var Address = ""
    @State private var Services = ""
    @State private var isToggleOn = false
    @State private var selectedServiceIndex = 0
    private let services = ["Catering", "Bakery", "Music","Decor"]
    @State private var isPopoverVisible = false
    @State private var selectedService = "Services"

    
    
    
    var body: some View {
        ZStack {
            VStack {
                Spacer() // Pushes the content to the top
                
                Label("Details", systemImage: "")
                    .font(Font.custom("AirbnbCereal_W_Md", size: 35))
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                    .padding(.bottom, 20)
                    .offset(y: 50)
                    .position(CGPoint(x: 195.0, y: 10.0))
                // Adjust the offset to position the label
                
                Spacer() // Adds additional space at the bottom
            }
            
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
            .position(CGPoint(x: 230.0, y: 150.0))
            //phone number
            
            
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
            .position(CGPoint(x: 230.0, y: 230.0))
            
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                    .frame(width: 317, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.9, green: 0.87, blue: 0.87), lineWidth: 1)
                    )
                
                TextField("Email Address", text: $EmailAddress)
                    .padding(.horizontal, 10)
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
            }
            .padding(.bottom, 20)
            .position(CGPoint(x: 230.0, y: 310.0))
            
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
            .position(CGPoint(x: 230.0, y: 390.0))
            
            
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundColor(Color.white)
                .cornerRadius(12)
                .overlay(
                    HStack {
                        Text("$")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("Open to fixable rate")
                            .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                            .padding(.horizontal, 10)
                        
                        Spacer() // Adds spacing between text and toggle
                        
                        Toggle("", isOn: $isToggleOn)
                            .labelsHidden() // Hides the default label of the toggle
                    }
                        .padding()
                )
                .position(x: 195, y: 480)
            
            
            VStack {
                 // Other content in your view
                 
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
             .padding()
             .position(CGPoint(x: 195.0, y: 600.0))
  
            
        }
        

    }
    
    

}



struct detail_Previews: PreviewProvider {
    static var previews: some View {
        detail()
    }
}
