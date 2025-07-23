//
//  LoadingView.swift
//  Appetizers
//
//  Created by Mladen Pašara on 26.06.2025..
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea(edges: .all)
            ActivityIndicator()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LoadingView()
}
