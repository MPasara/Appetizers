//
//  EmptyState.swift
//  Appetizers
//
//  Created by Mladen Pašara on 09.07.2025..
//

import SwiftUI

struct EmptyState: View {

    let imageName: String
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)

            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(
        imageName: "empty-order",
        message:
            "This is our test message. I'm making it a little long for testing."
    )
}
