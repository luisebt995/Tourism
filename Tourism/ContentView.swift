//
//  ContentView.swift
//  Tourism
//
//  Created by Luis on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: ImageView(footballClub: .madrid)){
                    CityView(imageName: "madrid", cityName: "Madrid")
                }
                NavigationLink(destination: ImageView(footballClub: .barcelona)){
                    CityView(imageName: "barcelona", cityName: "Barcelona")
                }
                NavigationLink(destination: ImageView(footballClub: .valencia)){
                    CityView(imageName: "valencia", cityName: "Valencia")
                }
                NavigationLink(destination: ImageView(footballClub: .bilbao)){
                    CityView(imageName: "bilbao", cityName: "Bilbao")
                }
            }.navigationTitle("Elija su destino")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CityView : View {
    
    var imageName : String
    var cityName : String
    
    var body: some View{
        HStack{
            Spacer()
            ZStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 100)
                    .clipped()
                    .cornerRadius(20.0)
            
                Text(cityName)
                    .font(.custom("Helvetica-Medium",size: 34))
                    .bold()
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top,5)
        .padding(.bottom,5)
    }
}
