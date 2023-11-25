//
//  SearchBar.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    @State var searchStr = ""
    var body: some View {
        HStack {
            Button {/*Search*/} label: {
                Image("search-normal")
                    .padding(.horizontal, 15)
                    .padding(.vertical, 15)
            }
        
            TextField(text: $searchStr) {
                Text("Search doctor or health issue")
                    .foregroundColor(Color("text_second_dark"))
            }
            
            Spacer()
        }
        .background(Color("background_second"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SearchBar_Previews : PreviewProvider {
    static var previews : some View {
        SearchBar()
    }
}
