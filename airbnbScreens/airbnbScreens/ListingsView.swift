//
//  ListingsView.swift
//  airbnbScreens
//
//  Created by Admin on 11/21/22.
//

import SwiftUI

struct ListingsView: View {
    @State var listingClicked = false

    var body: some View {

        
        ScrollView (.vertical, showsIndicators: false){
            VStack {
                
                
                Spacer().frame(height: 30)

                Text("695 top of the world homes")
                    .font(.system(size: 12))
                    .fontWeight(.medium)

                //start category item
                ZStack {
                    
                    
                    Button(action: {
                        listingClicked.toggle()
                        
                    }) {
                        VStack(alignment: .leading){
                            Spacer()
                            
                            Image("treehouse1")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 350.0, height: 300.0).cornerRadius(12)
                                
                                    
                            Spacer().frame(height: 10)
                            
                            
                            HStack {
                                Text("Portland, Oregon").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                    .font(.system(size: 14)).bold()
                                Spacer().frame(width: 180)

                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12.0, height: 12.0)
                                    .foregroundColor(.black)
                                Text("5.0")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14))
                            }.frame(height: 12)
                            Text("250 kilometers away").foregroundColor(.gray)
                                .font(.system(size: 14))
                            Spacer().frame(height: 2)

                            Text("Jan 8 - 15").foregroundColor(.gray)
                                .font(.system(size: 14))
                            Spacer().frame(height: 4)

                            HStack (spacing: 5){
                                Text("$222")
                                 .bold().foregroundColor(.black)
                                    .font(.system(size: 14))
                                Text("night")
                                .foregroundColor(.black)
                                .fontWeight(.light)

                                .font(.system(size: 14))
                            }
                            
                        }
                        
                        
                }
                    
                    VStack {
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("favorite")
                
                            }
                            //end button
                        }
                        Spacer()

                    }
                    .padding(.top, 29)
                    .padding(.trailing, 44)
            }//end category item
                
                
            Spacer().frame(height: 10)

            //start category item
            ZStack {
                
                
                Button(action: {
                    listingClicked.toggle()

                    
                }) {
                    VStack(alignment: .leading){
                        Spacer()
                        
                        Image("treehouse2")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 350.0, height: 300.0).cornerRadius(12)
                            
                                
                        Spacer().frame(height: 10)
                        
                        
                        HStack {
                            Text("Napoli, Treasureland").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14)).bold()
                            Spacer().frame(width: 155)

                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 12.0, height: 12.0)
                                .foregroundColor(.black)
                            Text("4.9")
                                .foregroundColor(.black)
                                .font(.system(size: 14))
                        }.frame(height: 12)
                        Text("1.5 kilometers away").foregroundColor(.gray)
                            .font(.system(size: 14))
                        Spacer().frame(height: 2)

                        Text("Feb 2 - 10").foregroundColor(.gray)
                            .font(.system(size: 14))
                        Spacer().frame(height: 4)

                        HStack (spacing: 5){
                            Text("$364")
                             .bold().foregroundColor(.black)
                                .font(.system(size: 14))
                            Text("night")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                        }
                        
                    }
                    
                    
            }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("favorite")
            
                        }
                        
                    }
                    Spacer()

                }
                .padding(.top, 29)
                .padding(.trailing, 44)
        }//end category item
                
                
        Spacer().frame(height: 10)

                
        //start category item
        ZStack {
            
            
            Button(action: {
                listingClicked.toggle()

                
            }) {
                VStack(alignment: .leading){
                    Spacer()
                    
                    Image("treehouse3")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350.0, height: 300.0).cornerRadius(12)
                        
                            
                    Spacer().frame(height: 10)
                    
                    
                    HStack {
                        Text("PizzaTown, PizzaLand").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                            .font(.system(size: 14)).bold()
                        Spacer().frame(width: 150)

                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12.0, height: 12.0)
                            .foregroundColor(.black)
                        Text("4.6")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }.frame(height: 12)
                    Text("500 kilometers away").foregroundColor(.gray)
                        .font(.system(size: 14))
                    Spacer().frame(height: 2)

                    Text("Sep 16 - 27").foregroundColor(.gray)
                        .font(.system(size: 14))
                    Spacer().frame(height: 4)

                    HStack (spacing: 5){
                        Text("$50")
                         .bold().foregroundColor(.black)
                            .font(.system(size: 14))
                        Text("night")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                    }
                    
                }
                
                
        }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("favorite")
        
                    }
                    
                }
                Spacer()

            }
            .padding(.top, 29)
            .padding(.trailing, 44)
    }//end category item
    Spacer().frame(height: 10)

                
                

        }
    }//end scroll view for listings
        .fullScreenCover(isPresented: $listingClicked) {
            SelectedListing()
        }
    }
}

struct ListingsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingsView()
    }
}
