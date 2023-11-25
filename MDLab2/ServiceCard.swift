//
//  ServiceCard.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct ServiceCategoriesCard : View {
    var body: some View {
        HStack {
            Button {/*show category*/} label: {ServiceCategoryCard(name: "Covid 19", icon: "covid")}
            Spacer()
            Button {/*show category*/} label: {ServiceCategoryCard(name: "Doctor", icon: "profile-add")}
            Spacer()
            Button {/*show category*/} label: {ServiceCategoryCard(name: "Medicine", icon: "link")}
            Spacer()
            Button {/*show category*/} label: {ServiceCategoryCard(name: "Hospital", icon: "hospital")}
        }
    }
}

struct ServiceCategoryCard : View   {
    var name : String = "Covid 19"
    var icon : String = "covid"
    var body: some View {
        VStack {
            Image(icon)
                .padding(25)
                .background(Color("background_second"))
                .clipShape(Circle())
            Text(name)
                .foregroundColor(Color("text_second_dark"))
        }
        
    }
}

struct ServiceCategoriesCard_Previews : PreviewProvider {
    static var previews : some View {
        ServiceCategoriesCard()
    }
}

struct ServiceCategoryCard_Previews : PreviewProvider {
    static var previews : some View {
        ServiceCategoryCard()
    }
}
