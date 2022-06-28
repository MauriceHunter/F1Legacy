//
//  ContentView.swift
//  F1Legacy
//
//  Created by Maurice Hunter on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tabViewSet = "0"
    
    let trackNames = ["Silverstone1950", "Monaco1950", "Indianapolis1950", "Bremgarten1950", "Belgium1950", "France1950", "Italy1950"]
    
    struct NineteenFiftyView: View {
        var body: some View {
            VStack{
                ScrollView{
                    Text("\(nineteenfifty["description"] ?? "null")")
                }
            }
        }
    }
    
    var BritainTrackPic: some View =
        Image("Silverstone1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct BritainView: View {
        var body: some View {
            VStack{
                Text("\(britain["description"] ?? "null")")
            }
        }
    }
    
    var MonacoTrackPic: some View =
        Image("Monaco1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct MonacoView: View {
        var body: some View {
            VStack{
                Text("\(monaco["description"] ?? "null")")
            }
        }
    }
    
    var IndianapolisTrackPic: some View =
        Image("Indianapolis1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct IndianapolisView: View {
        var body: some View {
            VStack{
                Text("\(indianapolis["description"] ?? "null")")
            }
        }
    }
    
    var SwitzerlandTrackPic: some View =
        Image("Bremgarten1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct SwitzerlandView: View {
        var body: some View {
            VStack{
                Text("\(switzerland["description"] ?? "null")")
            }
        }
    }
    
    var BelgiumTrackPic: some View =
        Image("Belgium1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct BelgiumView: View {
        var body: some View {
            VStack{
                Text("\(belgium["description"] ?? "null")")
            }
        }
    }
    
    var FranceTrackPic: some View =
        Image("France1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct FranceView: View {
        var body: some View {
            VStack{
                Text("\(france["description"] ?? "null")")
            }
        }
    }
    
    var ItalyTrackPic: some View =
        Image("Italy1950")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    
    struct ItalyView: View {
        var body: some View {
            VStack{
                Text("\(italy["description"] ?? "null")")
            }
        }
    }
    
    var body: some View {
        
        VStack{
            Text("1950")
                .font(.system(size: 100, weight: .light, design: .serif))
                .foregroundColor(.black)
                .shadow(radius: 5)
                .gesture(
                        TapGesture()
                            .onEnded { _ in
                                        tabViewSet = "0"
                                    }
                            )
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(trackNames, id: \.self){ name in
                        PhotoStyling(trackImage: name)
                            .cornerRadius(64)
                            .blur(radius: 10)
                            .offset(y: 10)
                            .opacity(0.9)
                            .overlay(PhotoStyling(trackImage: name).cornerRadius(12))
                    }
                }
            }
            
            //merge test
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    BritainTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(BritainTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "1"
                                            }
                                    )
                    MonacoTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(MonacoTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "2"
                                            }
                                    )
                    IndianapolisTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(IndianapolisTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "3"
                                            }
                                    )
                    SwitzerlandTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(SwitzerlandTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "4"
                                            }
                                    )
                    BelgiumTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(BelgiumTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "5"
                                            }
                                    )
                    FranceTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(FranceTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "6"
                                            }
                                    )
                    ItalyTrackPic
                        .cornerRadius(64)
                        .blur(radius: 10)
                        .offset(y: 10)
                        .opacity(0.9)
                        .overlay(ItalyTrackPic.cornerRadius(12))
                        .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                                tabViewSet = "7"
                                            }
                                    )
                } // Hstack in scrollview
            } // Scroll view
            VStack{
                if tabViewSet == "0" {
                    TabView{
                        NineteenFiftyView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "1" {
                    TabView{
                        BritainView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "2" {
                    TabView{
                        MonacoView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "3" {
                    TabView{
                        IndianapolisView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "4" {
                    TabView{
                        SwitzerlandView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "5" {
                    TabView{
                        BelgiumView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "6" {
                    TabView{
                        FranceView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
                if tabViewSet == "7" {
                    TabView{
                        ItalyView()
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .background(.thinMaterial)
                }
            }//Tabview vstack
            .frame(maxWidth: .infinity, maxHeight: 400)
            .tabViewStyle(PageTabViewStyle())
            .background(.thinMaterial)
        } // Main body VStack
    } // Body some view
} // Content view





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
