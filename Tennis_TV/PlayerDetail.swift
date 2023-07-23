//
//  PlayerDetail.swift
//  Tennis_TV
//
//  Created by Kalyan Chakravarthy Narne on 7/16/23.
//

import SwiftUI

struct PlayerDetail: View {
    var name: String
    var bio: String
    var headline: String
    var body: some View {
        VStack {
            Image(systemName: "photo")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            
            Divider()
            
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .lineLimit(50)
        }.padding().navigationTitle(Text(name)).navigationBarTitleDisplayMode(.inline)
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(name: "kalyan", bio: "India", headline: "hard working")
    }
}
