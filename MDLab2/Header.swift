//
//  Header.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct Header: View {
    var username: String = "James"
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text("Hello,")
                    .foregroundColor(Color("text_second_dark"))
                Text("Hi " + username)
                    .foregroundColor(Color("text_primary_dark"))
                    .bold(true)
            }
            
            Spacer()
            
            Image("Group")
                .resizable()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
                .scaledToFit()
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
