//
//  FlagImage.swift
//  Guess the Flag
//
//  Created by Maxim P on 25/02/2024.
//

import SwiftUI

struct FlagImage: View {
    let name: String
    
    var body: some View {
        if let image = UIImage(named: name) {
            Image(uiImage: image)
                .clipShape(.capsule)
                .shadow(radius: 10)
        } else {
            Text("Image not found")
                .foregroundColor(.red)
                .font(.title.bold())
        }
    }
}

#Preview {
    FlagImage(name: "Fran")
}
