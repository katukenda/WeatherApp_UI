//
//  WeatherButton.swift
//  SwiftUI-weather
//
//  Created by Janitha Katukenda on 2021-05-07.
//

import SwiftUI

struct WeatherButton: View {
   
   var title: String
   var textColor: Color
   var backgroundColor : Color
   
   var body: some View {
       
           Text(title)
               .frame(width: 280, height: 50)
            .background(backgroundColor)
               .foregroundColor(textColor)
               .font(.system(size: 22, weight: .medium))
      
       .cornerRadius(10)
   }
}
