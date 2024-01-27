//
//  SelectCoHost.swift
//  CozyGather_sri
//
//  Created by user2 on 25/01/24.
//

import SwiftUI

struct SelectCoHost: View {
    @State private var coHostName: String = ""

    var body: some View {
        VStack {
            Text("Select Co-Host")
                .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                .padding(.bottom, 20)

            TextField("Co-Host Name", text: $coHostName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Done") {
                // Add action to save the selected co-host
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct SelectCoHost_Previews: PreviewProvider {
    static var previews: some View {
        SelectCoHost()
    }
}
