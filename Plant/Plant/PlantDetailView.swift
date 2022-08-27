//
//  PlantDetailView.swift
//  Plant
//
//  Created by Melisa Yılmaz on 27.08.2022.
//

import SwiftUI

struct PlantDetailView: View {
    var post: Post
    
    var body: some View {
        VStack(spacing: 20) {
    
            Image(post.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
            
            Text(post.title)
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(post.description)
                .font(.body)
                .minimumScaleFactor(0.01)
                .multilineTextAlignment(.center)
                .padding()
            
        
           Spacer()
            Link(destination: post.url, label:  {
                Text("See More Details")
                    .bold()
                    .font(.title2)
                    .frame(width: 200, height: 50)
                    .background(Color("Color"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
    
                
            })
            Spacer()
        }
        
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(post: PostList.posts.first!)
    }
}
