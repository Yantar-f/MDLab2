import SwiftUI

struct MainScreen: View {
    var nextVisit = NextVisit(
        doctorName: "Imran",
        doctorSurname: "Syahir",
        doctorPosition: "Genral Doctor",
        visitDate: "Sunday, 12 June",
        visitTime: "11:00 - 12:00 AM"
    )
    
    var doctorsLocations = [
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
        ZStack(alignment: .top) {
            ScrollView {
                VStack {
                    Header().padding(.bottom, 10)
                    VisitCard(nextVisit: NextVisit()).padding(.vertical, 10)
                    SearchBar().padding(.vertical, 10)
                    ServiceCategoriesCard().padding(.vertical, 10)
                    DoctorsLocations(locationsInfo: doctorsLocations).padding(.vertical, 10)
                }
                .background(.white)
                .padding(20)	
            }
            
            NavigationBar()
                .frame(maxHeight: .greatestFiniteMagnitude, alignment: .bottom)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

