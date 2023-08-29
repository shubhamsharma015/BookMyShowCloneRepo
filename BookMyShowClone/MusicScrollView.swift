//
//  MusicScrollView.swift
//  BookMyShowClone
//
//  Created by Aryan on 20/06/23.
//

import SwiftUI

struct MusicScrollView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                Image("music1").resizable()
                    .frame(width: UIScreen.main.bounds.width - 90, height: 190).cornerRadius(20)
                Image("music2").resizable()
                    .frame(width: UIScreen.main.bounds.width - 90, height: 190).cornerRadius(20)
                Image("music3").resizable()
                    .frame(width: UIScreen.main.bounds.width - 90, height: 190).cornerRadius(20)
                Image("music4").resizable()
                    .frame(width: UIScreen.main.bounds.width - 90, height: 190).cornerRadius(20)
            }
        }
    }
}

struct MusicScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MusicScrollView()
    }
}
