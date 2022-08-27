//
//  PlantListView.swift
//  Plant
//
//  Created by Melisa Yılmaz on 27.08.2022.
//

import SwiftUI


struct PlantListView: View {
    
    var posts: [Post] = PostList.posts
    
    var body: some View {
            PostView(posts: PostList.posts)
                
        
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}

struct PostView: View {
    var posts: [Post]
    var nestedPosts: [[Post]] = [[Post]] ()
    let screenWidth = UIScreen.main.bounds.width
    
    init(posts: [Post]) {
        self.posts = posts
        nestedPosts = createNestedPosts(posts)
        
    }
    
    private func createNestedPosts(_ posts: [Post]) -> [[Post]] {
        var nestedPosts: [[Post]] = [[Post]] ()
        var tempPosts: [Post] = [Post]()
        var width: CGFloat = 0
        
        for post in posts {

            let newPostWidth: CGFloat = 100
            
            if(width + newPostWidth + 32)  < screenWidth {
                width += newPostWidth
                tempPosts.append(post)
            }
            else {
                width = newPostWidth
                nestedPosts.append(tempPosts)
                tempPosts.removeAll()
                tempPosts.append(post)
            }
            
        }
        
        nestedPosts.append(tempPosts)
        
        
        return nestedPosts
    }
    
    var body: some View{
        NavigationView {
            ScrollView {
                VStack(alignment: .leading){
                    ForEach(nestedPosts, id: \.self) { subItems in
                        HStack {
                            ForEach(subItems, id: \.id) { post in
                                NavigationLink(destination: PlantDetailView(post: post), label: {
                                    VStack {
                                        Image(post.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 150)
                                        Text(post.title)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .lineLimit(2)
                                    }
                                    .padding(.vertical,5)
                                }
                              )
                            }
                        }
                    }
                }
            }.navigationTitle(Text("Plants"))
        }
    
    }
}
