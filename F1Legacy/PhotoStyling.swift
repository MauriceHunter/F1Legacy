//
//  PhotoStyling.swift
//  F1Legacy
//
//  Created by Maurice Hunter on 6/28/22.
//

import SwiftUI

struct PhotoStyling<String>: View {
    
    let trackImage: String
    
    var body: some View {
        Image("\(trackImage.self)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

struct PhotoStyling_Previews: PreviewProvider {
    static var previews: some View {
        PhotoStyling(trackImage: "Silverstone1950")
    }
}
