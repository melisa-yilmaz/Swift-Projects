//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Melisa Yılmaz on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight) // to fit the color to the whole screen
            VStack {
                CityTextView(cityName: "Istanbul")
                
                VStack(spacing: 8){
                    MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 28)
        
                }.padding(.bottom, 45)
                HStack (spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 15)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "snowflake",
                                   temperature: 4)
                    WeatherDayView(dayOfWeek: "THUR",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 19)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "wind.snow",
                                   temperature: 12)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 10)
                    
                }
                
                Spacer()
                Button {
                    isNight = !isNight // isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .white,
                                  backgroundColor: isNight ? .black : .blue
                                )
                }
                Spacer()
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .regular, design: .default))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .regular, design: .default))
        }.foregroundColor(.white)
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool

    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue,
                                        isNight ? Color("gray") : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {

    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 40, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 150)
        Text("\(temperature)°")
            .font(.system(size: 60, weight: .light, design: .default))
            .foregroundColor(.white)
    }
}


