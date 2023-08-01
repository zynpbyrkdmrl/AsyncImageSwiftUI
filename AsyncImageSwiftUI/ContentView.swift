//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Zeynep Bayrak Demirel on 1.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjbxeu1PXDKUAMT1MHlWMKDcfnntkf0gD4oU1yojxje79y1kt0_dsTL8PmPBoVjDnSueE&usqp=CAU")!) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView() // dönen işaret görünümü, inene kadar
                }

            
             List(superHeroArray) { Superhero in
                 Text(Superhero.name)
                .font(.title3)
                .foregroundColor(.blue)
            
        }
        }.navigationTitle(Text("Superhero Book"))
        }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
