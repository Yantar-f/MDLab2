//
//  NavigationBar.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .frame(maxHeight: 1)
                .padding(.bottom, 10)
            HStack {
                Spacer()
                NavigationSection(name: "Home", isSelected: true, icon: "Home")
                Spacer()
                NavigationSection(name: "Calendar", isSelected: false, icon: "calendar-2")
                Spacer()
                NavigationSection(name: "Messages", isSelected: false, icon: "message")
                Spacer()
                NavigationSection(name: "Profile", isSelected: false, icon: "profile")
                Spacer()
            }
        }.background(.white)
    }
}

struct NavigationBar_Previews : PreviewProvider {
    static var previews : some View {
        NavigationBar()
    }
}

struct NavigationSection : View {
    var name = "Calendar"
    var isSelected = false
    var icon = "calendar-2"
    var body : some View {
        if (isSelected) {
            HStack {
                Label(name, image: icon)
                    .foregroundColor(Color(red: 80/255, green: 148/255, blue: 252/255))
                    .bold(true)
                    .padding()
            }
            .background(.cyan.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 15))
        } else {
            Image(icon)
        }
    }
}

struct NavigationSection_Previews : PreviewProvider {
    static var previews : some View {
        NavigationSection()
    }
}
