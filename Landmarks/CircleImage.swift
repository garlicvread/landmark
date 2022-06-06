//
//  CircleImage.swift
//  Landmarks2
//
//  Created by Kim, Che-Pill on 2022/06/06.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDevice("iPhone 13 Pro Max")
    }
}
