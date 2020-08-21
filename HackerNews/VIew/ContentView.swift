//
//  ContentView.swift
//  HackerNews
//
//  Created by Devika Raja on 30/06/20.
//  Copyright © 2020 Devika Raja. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkingManager()
    var body: some View {
        NavigationView{
            List(self.networkManager.posts) { post in
                if(post.url != nil){
                    NavigationLink(destination: DetailView(url:post.url)) {
                         HStack {
                            VStack{
                                                                    Image(systemName: "chevron.up.circle")
                                                                    .resizable()
                                                                        .aspectRatio(1, contentMode: .fit)
                                                                        .frame(width: 20, height: 20)
                                                                    Text("\(post.points)");
                                                                }
                            Spacer()
                                       Text(post.title)
                                       Spacer()
                                     
                                    
                                   }
                    }
        }
            }
        }
        .navigationBarTitle("HackerNews")
        .onAppear {
            self.networkManager.fetchData()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
