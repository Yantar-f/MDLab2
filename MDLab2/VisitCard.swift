//
//  VisitCard.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct VisitCard : View {
    var nextVisit = NextVisit()
    var body: some View {
        VStack {
            HStack {
                HStack() {
                    Image("doctor_icon1")
                        .resizable()
                        .background(.white)
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading) {
                        Text("Dr. " + nextVisit.doctorName + " " + nextVisit.doctorSurname)
                            .foregroundColor(Color("text_primary_light"))
                            .bold(true)
                        
                        Text(nextVisit.doctorPosition)
                            .foregroundColor(Color("text_primary_light").opacity(0.7))
                    }
                    .padding(25)
                }
                .padding(.leading, 20)
                
                Spacer()
                
                Button {/*View next visit*/} label: {
                    Image("arrow-right")
                        .padding(.trailing, 20)
                }
            }
            
            Rectangle()
                .foregroundColor(.white.opacity(0.3))
                .frame(maxHeight: 1)
                .padding(.horizontal, 20)
            
            HStack {
                Spacer()
                
                Label(nextVisit.visitDate, image: "calendar")
                    .foregroundColor(Color("text_primary_light"))
                
                Spacer()
                
                Label(nextVisit.visitTime, image: "clock")
                    .foregroundColor(Color("text_primary_light"))
                
                Spacer()
            }
            .padding(15)
        }
        .background(Color(red: 80/255, green: 148/255, blue: 252/255))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct VisitCard_Previews: PreviewProvider {
    static var previews: some View {
        VisitCard(nextVisit: NextVisit())
    }
}
