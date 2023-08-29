//
//  ScrollableButtons.swift
//  BookMyShowClone
//
//  Created by Aryan on 19/06/23.
//

import SwiftUI

struct ScrollableButtons: View {
    @State private var selection = 0
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
        ScrollView(.horizontal){
            HStack{
//                VStack{
//                    Image(systemName: "film.circle.fill")
//                    Text("Movies")
//                }
                sliderOption(imageString: "film.circle.fill", text: "Movies")
                sliderOption(imageString: "waveform.and.mic", text: "Music Shows")
                sliderOption(imageString: "music.mic", text: "Comedy Shows")
                sliderOption(imageString: "scribble.variable", text: "Sports")
                sliderOption(imageString: "film", text: "Streams")
                sliderOption(imageString: "house", text: "WorkShop")
            }
        }
        
            TabView(selection: $selection) {
                Image("poster5").resizable().scaledToFill()
                    .tag(0)
                Image("poster2").resizable().scaledToFill()
                    .tag(1)
                Image("poster3").resizable().scaledToFill()
                    .tag(2)
                Image("poster4").resizable().scaledToFill()
                    .tag(3)
                Image("poster5").resizable().scaledToFill()
                    .tag(4)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .frame(width: UIScreen.main.bounds.width, height: 300)
            .onReceive(timer) { _ in
                withAnimation(Animation.easeInOut) {
                    selection = (selection + 1) % 5 // Assuming you have 5 images
                }
            }
            
        }
    }
}

struct ScrollableButtons_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableButtons()
    }
}

struct sliderOption: View{
    @State var imageString: String
    @State var text: String
    var body: some View{
        VStack(){
            Image(systemName: imageString)
                .font(.largeTitle)
            Text(text)
                .font(.caption)
            Spacer()
        }
        .frame(width:60,height: 80)
    
//        .background(Color.gray)
            
    }
}



struct horizontalPazination: View{
    @State private var selection = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View{
        TabView(selection: $selection) {
            Image("poster4").resizable().scaledToFill()
                .tag(0)
            Image("poster3").resizable().scaledToFill()
                .tag(1)
            Image("poster2").resizable().scaledToFill()
                .tag(2)
            Image("poster3").resizable().scaledToFill()
                .tag(3)
            Image("poster5").resizable().scaledToFill()
                .tag(4)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(width: UIScreen.main.bounds.width, height: 300)
        .onReceive(timer) { _ in
            withAnimation(Animation.easeInOut) {
                selection = (selection + 1) % 5 // Assuming you have 5 images
            }
        }
    }
}
