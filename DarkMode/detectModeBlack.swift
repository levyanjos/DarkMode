//
//  detectModeBlack.swift
//  DarkMode
//
//  Created by Dennis Hasselbusch on 14.10.20.
//

import SwiftUI

struct detectModeBlack: View {
    @available(iOS 13.0.0, *)
    var body: some View {
            NavigationView{
                Text("hello World!")
            }.navigationBarTitle("Light View")
    }
}

struct detectModeBlack_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        detectModeBlack()
    }
}
