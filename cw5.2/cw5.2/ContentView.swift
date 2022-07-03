//
//  ContentView.swift
//  cw5.2
//
//  Created by Batool Hussain on 02/07/2022.
//

import SwiftUI


struct ContentView: View {
  @State  var emoji = ["😀" , "😍" , "🤨" , "😡" , "😱", "🫠" ,"🥱" ]
  @State  var click = ""
    var body: some View {
        
        VStack{
            Text("اختار الايموجي الي يعبر عنك" )
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
//                .font(.title3)
                .font(.system(size: 40))

//            Divider()
    
            
            Text(click)
                .font(.system(size: 90))
//                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
//
//                .padding()
//                .font(.title3)
//                .frame(width: 150, height: 100)
        
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(emoji, id: \.self) { emoji in
                      Text(emoji)
                        .onTapGesture {
                            click = emoji
                        }
                        .fixedSize()
                        .frame(width: 150, height: 100)
                        .background(.yellow .opacity(0.3))
                        .clipShape(Circle())
                        .font(.system(size: 70))
                        .padding(.all)
                    

                    }
                    
                    
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
