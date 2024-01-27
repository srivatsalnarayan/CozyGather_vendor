//
//  home_page.swift
//  CozyGather_sri
//
//  Created by user2 on 25/01/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            // Your main content goes here
            
            Spacer() // Spacer to push the buttons to the bottom
            
            HStack {
                // Buttons go here
            }
            .padding()
            BottomNavigationBar()

        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

