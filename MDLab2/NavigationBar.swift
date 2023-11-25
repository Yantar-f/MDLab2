//
//  NavigationBar.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct NavigationBar: View {
    @State var isHomeSelected = true
    @State var isCalendarSelected = false
    @State var isMessagesSelected = false
    @State var isProfileSelected = false
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .frame(maxHeight: 1)
                .padding(.bottom, 10)
            HStack {
                Spacer()
                Button {
                    isHomeSelected = true
                    isCalendarSelected = false
                    isMessagesSelected = false
                    isProfileSelected = false
                } label: {
                    NavigationSection(name: "Home", isSelected: isHomeSelected, icon: "Home")
                }
                Spacer()
                Button {
                    isHomeSelected = false
                    isCalendarSelected = true
                    isMessagesSelected = false
                    isProfileSelected = false
                } label: {
                    NavigationSection(name: "Calendar", isSelected: isCalendarSelected, icon: "calendar-2")
                }
                Spacer()
                Button {
                    isHomeSelected = false
                    isCalendarSelected = false
                    isMessagesSelected = true
                    isProfileSelected = false
                } label: {
                    NavigationSection(name: "Messages", isSelected: isMessagesSelected, icon: "message")
                }
                Spacer()
                Button {
                    isHomeSelected = false
                    isCalendarSelected = false
                    isMessagesSelected = false
                    isProfileSelected = true
                } label: {
                    NavigationSection(name: "Profile", isSelected: isProfileSelected, icon: "profile")
                }
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
