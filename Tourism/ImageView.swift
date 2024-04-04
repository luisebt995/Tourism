//
//  ImageView.swift
//  Tourism
//
//  Created by Luis on 4/4/24.
//

import SwiftUI

struct ImageView: View {
    let footballClub : Cities
    
    var body: some View {
        Image(imageResource(city: footballClub))
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(footballClub: .bilbao)
    }
}
