//
//  MoviesRecomonded.swift
//  BookMyShowClone
//
//  Created by Aryan on 20/06/23.
//

import SwiftUI

struct MoviesRecomonded: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
//            VStack{
//                Image("movie1")
//                    .resizable()
//                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 250).cornerRadius(30)
//                HStack{
//                    Image(systemName: "star.fill").foregroundColor(.yellow)
//                    Text("6.5")
//                    Spacer()
//                    Text("605.5K Votes")
//                }.frame(width: UIScreen.main.bounds.width / 3)
//                .font(.caption2).lineLimit(1)
//                .background(Color.gray).cornerRadius(30)
//
//                Text("King Kong")
//            }
            
            
                Movies(name: "King Kong", imageName: "movie1", rating: "7", votes: "205.5")
                    .hoverEffect(.lift)
            Movies(name: "Captain America - Civil War", imageName: "movie2", rating: "9", votes: "706.2")
            Movies(name: "Love Yatri", imageName: "movie3", rating: "6", votes: "102")
//            Movies(name: "Adipurush", imageName: "movie4", rating: "6", votes: "555.5")
            Movies(name: "RRR", imageName: "movie5", rating: "9", votes: "1000.6")
            Movies(name: "Thugs Of Hindustan", imageName: "movie6", rating: "4", votes: "000.0")
            
            }
        }
    }
}

struct MoviesRecomonded_Previews: PreviewProvider {
    static var previews: some View {
        
        MoviesRecomonded()
    }
}

struct Movies: View{
    @State var name : String
    @State var imageName : String
    @State var rating : String
    @State var votes : String
    @State private var isShrunk = false
    @GestureState private var isPressing = false
    var body: some View{
        VStack(alignment:.leading){
            
            Image(imageName)
                .resizable()
                .frame(width: UIScreen.main.bounds.width / 2.5, height: 250).cornerRadius(30)
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Text(rating)
                Spacer()
                Text("\(votes)K Votes")
            }.frame(width: UIScreen.main.bounds.width / 2.5)
                .font(.body).lineLimit(1)
                .background(Color.gray).cornerRadius(30)
            
            Text(name)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: UIScreen.main.bounds.width / 2.5)
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width / 2.5, height: 330).padding(5)
           
//        --------------------------------
        
        
        
    }
}
