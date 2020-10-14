//
//  detectMode.swift
//  DarkMode
//
//  Created by Dennis Hasselbusch on 14.10.20.
//

import SwiftUI


//in SwiftUI its pretty simple to detect which Mode you are using...
@available(iOS 13.0, *)
struct detectMode: View {
    let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    let gradientStartDark = Color(red: 95.0 / 255, green: 169.0 / 255, blue: 244.0 / 255)

    let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    let gradientEndDark = Color(red: 79.0 / 255, green: 178.0 / 255, blue: 141.0 / 255)

    let toggleTextcolorLight = Color(red: 227.0 / 255, green: 227.0 / 255, blue: 227.0 / 255)
    let toggleTextcolorDark = Color(red: 34.0 / 255, green: 38.0 / 255, blue: 58.0 / 255)

    let textColorDark = Color(red: 238.0 / 255, green: 238.0 / 255, blue: 238.0 / 255)
    let textColorLight = Color(red: 41.0 / 255, green: 45.0 / 255, blue: 67.0 / 255)

    let bgColorDark = Color(red: 41.0 / 255, green: 45.0 / 255, blue: 67.0 / 255)
    let bgColorLight = Color(red: 238.0 / 255, green: 238.0 / 255, blue: 238.0 / 255)
    
    @Environment(\.colorScheme) var colorScheme
    
    @available(iOS 13.0.0, *)
    var body: some View {
        TabView{
            NavigationView{
                
                Text("Now change the iOS Color scheme and see the magic.")
                    .background(colorScheme == .light ? bgColorLight: bgColorDark)
            }.navigationBarTitle("Light View")
            .tabItem {Text( "Light Mode" )}
            
            detectModeBlack()
                .tabItem { Text("Dark Mode") }
        }
       
    }
}

struct detectMode_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        detectMode()
    }
}
