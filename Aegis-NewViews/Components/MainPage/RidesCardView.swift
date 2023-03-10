//
//  RidesCardView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct RidesCardView: View {
    var rides: Rides
   @State private var favorite = false
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(Color("HomePageColor"))
                .cornerRadius(15)
                .frame(width: Screen.screenSize.width*0.92, height: Screen.screenSize.height*0.22)
            
            
            VStack(){
                HStack(){
                    Text("\(rides.day) ride with \(rides.username)")
                        .font(Font.custom("Poppins-Light", size: 13))
                    Spacer()
                    Text(rides.date)
                        .font(Font.custom("Poppins-Light", size: 10))
                }.padding(.bottom, 2)
                Spacer()
                
                HStack(){
                    VStack(alignment:.leading){
                        VStack(alignment: .leading){
                            Text("Distance")
                                .font(Font.custom("Poppins-Light", size: 8))
                            HStack(alignment: .bottom, spacing:1){
                                Text(rides.distance).font(Font.custom("Poppins-Bold", size: 14))
                              
                                    Text("km")
                                        .font(Font.custom("Poppins-Light", size: 10)).padding(.bottom,1)
                            }
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Duration")
                                .font(Font.custom("Poppins-Light", size: 8))
                            
                            HStack(alignment: .bottom, spacing:1){
                                Text(rides.duration)
                                    .font(Font.custom("Poppins-Bold", size: 14))
    
                                    Text("hr")
                                    .font(Font.custom("Poppins-Light", size: 10)).padding(.bottom,1)
                            }
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Speed")
                                .font(Font.custom("Poppins-Light", size: 8))
                            HStack(alignment: .bottom, spacing:1){
                                Text(rides.speed)
                                    .font(Font.custom("Poppins-Bold", size: 14))
                               
                                    Text("kph")
                                        .font(Font.custom("Poppins-Light", size: 10)).padding(.bottom,1)
                                
                            }
                        }
                    }
                    Spacer()
                    ZStack(alignment: .bottomTrailing){
                        Image(rides.video)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: Screen.screenSize.width*0.60, height: Screen.screenSize.height*0.16)
                            .cornerRadius(15)
                        Spacer()
                        Button(action: {
                            favorite.toggle()
                        }, label: {
                            ZStack {
                                
                                Circle()
                                    .fill(Color("FavoriteColor"))
                                    .frame(width: 25, height: 25)
                                Image(systemName: "heart.fill")
                                    .foregroundColor(favorite ? Color("MainColor") : Color.white)
                                Image(systemName: "heart")
                                    .foregroundColor(Color("MainColor"))
                            }
                        }).padding()
                    }
                }
                .frame(height: Screen.screenSize.height*0.16)
                //.padding()
            }
            .padding()
            .frame(width: Screen.screenSize.width*0.92,height: Screen.screenSize.height*0.21)
        }.padding(.bottom, 5)
    }
    
   
}

struct RidesCardView_Previews: PreviewProvider {
    static var previews: some View {
        RidesCardView(rides: RidesData[2]).preferredColorScheme(.dark)
        RidesCardView(rides: RidesData[2])
            .previewDevice("iPhone 8").preferredColorScheme(.light)
    }
}
