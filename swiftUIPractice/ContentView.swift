//
//  ContentView.swift
//  swiftUIPractice
//
//  Created by 松山響也 on 2021/08/08.
//

import SwiftUI

struct Player:Identifiable {
    var id:Int
    let name: String
    let image: Image
}

struct ContentView: View {
    
    let players:[Player] = [
        .init(id:0,name: "Yuta Watanabe", image: Image("Yuta Watanabe")),
        .init(id:1,name: "rui hachimura", image: Image("rui hachimura")),
        .init(id:2,name: "Kevin Durant", image: Image("Kevin Durant"))
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(players){ player in
                    HStack{
                        player.image
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text(player.name)
                            .font(.headline)
                            .padding(.leading,20)
                    }
                }
            }.navigationTitle(Text("NBA Player"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
