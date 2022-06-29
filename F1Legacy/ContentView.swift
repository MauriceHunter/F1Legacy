//
//  ContentView.swift
//  F1Legacy
//
//  Created by Maurice Hunter on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tabViewSet = "0"
    @State private var activeTab = ""
    
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
    
    
    struct BritainView: View {
        var body: some View {
            VStack{
                Text("\(britain["description"] ?? "null")")
            }
        }
    }
    
    struct MonacoView: View {
        var body: some View {
            VStack{
                Text("\(monaco["description"] ?? "null")")
            }
        }
    }
    
    struct IndianapolisView: View {
        var body: some View {
            VStack{
                Text("\(indianapolis["description"] ?? "null")")
            }
        }
    }
    
    struct SwitzerlandView: View {
        var body: some View {
            VStack{
                Text("\(switzerland["description"] ?? "null")")
            }
        }
    }
    
    struct BelgiumView: View {
        var body: some View {
            VStack{
                Text("\(belgium["description"] ?? "null")")
            }
        }
    }
    
    struct FranceView: View {
        var body: some View {
            VStack{
                Text("\(france["description"] ?? "null")")
            }
        }
    }
    
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
                            .gesture(
                                TapGesture()
                                    .onEnded{ _ in
                                        activeTab = name
                                        print(name)
                                    }
                            )
                    }
                }
            } // Scroll view
            TabView{
                VStack{
                    Text(activeTab)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 400)
            .tabViewStyle(PageTabViewStyle())
            .background(.thinMaterial)
//            VStack{
//                if tabViewSet == "0" {
//                    TabView{
//                        NineteenFiftyView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "Silverstone1950" {
//                    TabView{
//                        BritainView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "2" {
//                    TabView{
//                        MonacoView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "3" {
//                    TabView{
//                        IndianapolisView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "4" {
//                    TabView{
//                        SwitzerlandView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "5" {
//                    TabView{
//                        BelgiumView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "6" {
//                    TabView{
//                        FranceView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//                if tabViewSet == "7" {
//                    TabView{
//                        ItalyView()
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .background(.thinMaterial)
//                }
//            }//Tabview vstack
//            .frame(maxWidth: .infinity, maxHeight: 400)
//            .tabViewStyle(PageTabViewStyle())
//            .background(.thinMaterial)
        } // Main body VStack
    } // Body some view
} // Content view





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
