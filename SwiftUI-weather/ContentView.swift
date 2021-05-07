 //
 //  ContentView.swift
 //  SwiftUI-weather
 //
 //  Created by Janitha Katukenda on 2021-05-07.
 //
 
 import SwiftUI
 
 struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityNmae: "Kurunegala, Sri Lanka")
                
                MainWeatherStaticsView(imageName: isNight ? "moon.stars.fill" : "sun.max.fill",
                                       temparature: 76)
                
                HStack(spacing: 20){
                    
                    
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.rain.fill",
                                   temparature: 74)
                    
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temparature: 70)
                    
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temparature: 66)
                    
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temparature: 60)
                    
                    
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "moon.stars.fill",
                                   temparature: 55)
                    
                 
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                    
                } label : {
                    WeatherButton(title: "Change Time Of Day", textColor: Color.blue, backgroundColor: Color.white)
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
    var imageName : String
    var temparature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName) .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temparature)°")
                .font(.system(size: 35, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
 }
 
 
 struct BackgroundView: View {
    
    
    @Binding var isNight: Bool
    
    
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
 }
 
 
 struct CityTextView: View {
    
    var cityNmae :String
    
    var body: some View {
        Text(cityNmae)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
 }
 
 
 struct MainWeatherStaticsView: View {
    
    var imageName :String
    var temparature :Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temparature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
 }
 
 

 
