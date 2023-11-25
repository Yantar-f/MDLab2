//
//  DoctorsLocations.swift
//  MDLab2
//
//  Created by user225687 on 11/17/23.
//

import Foundation
import SwiftUI

struct DoctorsLocations: View {
    var locationsInfo : Array<DoctorLocation> = [
        DoctorLocation(
            doctorName: "Joseph",
            doctorSurname: "Brostito",
            doctorIcon: "doctor_icon2",
            doctorSpecialization: "Dental Specialist",
            distanceKm: 1.2
        ),
        DoctorLocation(
            doctorName: "Imran",
            doctorSurname: "Syahir",
            doctorIcon: "doctor_icon1",
            doctorSpecialization: "General Doctor",
            distanceKm: 1.2
        ),
    ]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Near Doctor")
                .foregroundColor(Color("text_primary_dark"))
                .bold(true)
                
            VStack {
                LazyVStack {
                    ForEach(locationsInfo.startIndex...locationsInfo.endIndex - 2, id: \.self) { value in
                        DoctorLocationCard(doctorLocation: locationsInfo[value])
                        
                        Rectangle()
                            .foregroundColor(Color("background_second"))
                            .frame(maxHeight: 10)
                    }
                    DoctorLocationCard(doctorLocation: locationsInfo[locationsInfo.endIndex - 1])
                }
            }
        }
    }
}

struct DoctorLocationCard : View {
    var doctorLocation : DoctorLocation
    var body : some View {
        VStack {
            Button{/*Show doctor info*/} label: {
                HStack() {
                    Image(doctorLocation.doctorIcon)
                        .resizable()
                        .background(Color("background_second"))
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading) {
                        Text("Dr." + doctorLocation.doctorName + " " + doctorLocation.doctorSurname)
                            .foregroundColor(Color("text_primary_dark"))
                            .bold(true)
                        
                        Text(doctorLocation.doctorSpecialization)
                            .foregroundColor(Color("text_second_dark"))
                    }
                    
                    Spacer()
                    
                    Label(String(doctorLocation.distanceKm) + " KM" ,image: "location")
                        .foregroundColor(Color("text_second_dark"))
                        .padding(.trailing, 15)
                }
                .padding(.leading, 20)
                .padding(.vertical, 20)
                .background(Color("background_primary"))
            }
            
            Rectangle()
                .foregroundColor(Color("background_second"))
                .frame(maxHeight: 2)
            
            VStack{
                HStack {
                    Spacer()
                    
                    Label("reviews", image: "clock_2")
                        .foregroundColor(Color(red: 254/255, green: 176/255, blue: 82/255))
                        .padding(.vertical, 5)
                    
                    Spacer()
                    
                    Label("open at", image: "clock_3")
                        .foregroundColor(Color(red: 80/255, green: 148/255, blue: 252/255))
                    
                    Spacer()
                }
                .background(Color("background_primary"))
            }
        }
    }
}

struct DoctorsLocations_Previews : PreviewProvider {
    static var previews : some View {
        DoctorsLocations()
    }
}

struct DoctorLocationCard_Preview : PreviewProvider {
    static var previews : some View {
        DoctorLocationCard(
            doctorLocation: DoctorLocation(
                doctorName: "Joseph",
                doctorSurname: "Brostito",
                doctorIcon: "doctor_icon2",
                doctorSpecialization: "Dental Specialist",
                distanceKm: 1.2
            )
        )
    }
}

