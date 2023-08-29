//
//  ContentView.swift
//  BookMyShowClone
//
//  Created by Aryan on 19/06/23.
//



import SwiftUI

struct ContentView: View {
    @State private var hideBar = false

    @State private var offset : CGFloat = 0
    @State private var lastOffSet: CGFloat = 0
    var body: some View {

            HStack{
                VStack(alignment: .leading){
                    Text("It All Starts Here")
                    Text("Indore >")
                        .font(.caption2)
                }
                Spacer()
                Image(systemName: "magnifyingglass")
                Image(systemName: "bell")
                Image(systemName: "barcode.viewfinder")
            }
            
            .padding(7)
            .background(Color("background"))
            .foregroundColor(.white)
            .offset(x: 0, y: hideBar ? -100 : 0)
            .frame(height: hideBar ? 0 : nil)
        
//            Scrolling
    
        ScrollView(.vertical){
//            ------
            VStack{
            Group{
            ScrollableButtons()
            Text("Recommonded Movies")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            MoviesRecomonded()
            Text("Live. Love. Dance. Sunburn!")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            Text("Asia's BIGGEST MUSIC festival!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            MusicScrollView()
            
            Text("The Best Events This Week")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            Text("Monday to Sunday, we got you covered")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            horizontalPazination()
            Spacer()
            }
        }
//            On scroll hide header
        .overlay(
            GeometryReader{ proxy -> Color in
                let minY = proxy.frame(in: .named("SCROLL")).minY
                
                let durationOffset: CGFloat = 35
                DispatchQueue.main.async {
                    
                    
                    if minY < offset{
                      
                        if offset < 0 && -minY > (lastOffSet + durationOffset){
                            withAnimation(.linear.speed(1.5)){
                                hideBar = true
                                print("hide")
                            }
                            lastOffSet = -offset
                        }
                    }
                    
                    
                    if minY > offset && -minY < (lastOffSet - durationOffset){
                        withAnimation(.linear.speed(1.5)){
                            hideBar = false
                            print("show")
                        }
                        lastOffSet = -offset
                    }
                    
                    self.offset = minY
                }
                return Color.clear
            }
        )
        
        
        }
        .coordinateSpace(name: "SCROLL")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
