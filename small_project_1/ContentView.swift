import SwiftUI

struct MeshGradientOverview: View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("Click Me") 
                .frame(maxWidth: .infinity, minHeight: 60) 
                .background(
                    AnimatedMeshGradient()
                        .mask(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(lineWidth: 16)
                                .blur(radius: 8)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 3)
                                .blur(radius: 2)
                                .blendMode(.overlay)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 1)
                                .blur(radius: 1)
                                .blendMode(.overlay)
                        )
                )
                .cornerRadius(16)
                .background(.white)
                .cornerRadius(16)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.white.opacity(0.5), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 20)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 15)
                .foregroundColor(.black)
        }
        .padding()
        Button(action: {
            
        }) {
            Text("Click Me") 
                .frame(maxWidth: .infinity, minHeight: 60) 
                .background(
                    AnimatedMeshGradient()
                        .mask(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(lineWidth: 16)
                                .blur(radius: 8)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 3)
                                .blur(radius: 2)
                                .blendMode(.overlay)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white, lineWidth: 1)
                                .blur(radius: 1)
                                .blendMode(.overlay)
                        )
                )
                .cornerRadius(16)
                .background(.black)
                .cornerRadius(16)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.black.opacity(0.5), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 20)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 15)
                .foregroundColor(.white)
        }
        .padding()
    }
}

#Preview {
    MeshGradientOverview()
}
