//
//  AnimatedMeshGradient.swift
//  small_project_1
//
//  Created by Raphael Eigler on 07.01.25.
//

import SwiftUI

struct AnimatedMeshGradient: View {
    @State var appear = false
    @State var appear2 = false
    
    var body: some View {
        MeshGradient(width: 3, height: 3, points: [
            [0.0, 0.0], [appear ? 0.5 : 1.0, 0.0], [1.0, 0.0],
            [0.0, 0.5], appear2 ? [0.1, 0.5] : [0.8, 0.2], [1.0, 0.5],
            [0.0, 1.0], [1.0, appear ? 2.0 : 1.0], [1.0, 1.0]
        ], colors: [
            .pink, .purple, .blue,
            appear ? .blue : .orange, .indigo, appear ? .pink : .teal,
            .indigo, appear2 ? .red : .cyan, .purple
        ],
        smoothsColors: true,
        colorSpace: .perceptual)
        .ignoresSafeArea(edges: .all) // Ensures full coverage ignoring safe areas
        .onAppear {
            withAnimation(.easeInOut(duration:
                1).repeatForever(autoreverses: true)) {
                appear.toggle()
            }
            withAnimation(.easeInOut(duration:
                3).repeatForever(autoreverses: true)) {
                appear2.toggle()
            }
        }
    }
}

#Preview {
    AnimatedMeshGradient()
}
