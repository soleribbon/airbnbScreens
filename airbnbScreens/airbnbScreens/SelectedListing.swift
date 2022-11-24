//
//  SelectedListing.swift
//  airbnbScreens
//
//  Created by Admin on 11/22/22.
//

import SwiftUI

struct SelectedListing: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        
       
            VStack {
                Spacer().frame(height: 10)
                
                HStack {
                    
                    //start of button
                    Button(action: {
                        dismiss()
                        
                    }) {
                        //for x out of search view
                        Circle()
                            .strokeBorder(Color.gray,lineWidth: 0.5)
                            .foregroundColor(.black)
                            .frame(width: 30.0, height: 30.0)
                            .overlay(Image(systemName: "chevron.backward")).bold()
                            .font(.system(size: 12))

                            
                            .padding()
                            .accentColor(Color.black)
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous)).background(.white)
                    }//end of button
                    
                    Spacer()
                    
                    //start of button
                    Button(action: {
                        dismiss()
                        
                    }) {
                        //for x out of search view
                        Circle()
                            .strokeBorder(Color.gray,lineWidth: 0.5)
                            .foregroundColor(.black)
                            .frame(width: 30.0, height: 30.0)
                            .overlay(Image(systemName: "square.and.arrow.up")).bold()
                            .font(.system(size: 12))

                            
                            .padding()
                            .accentColor(Color.black)
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous)).background(.white)
                    }//end of button
                    
                    Spacer().frame(width: 0)
                    
                    //start of button
                    Button(action: {
                        dismiss()
                        
                    }) {
                        //for x out of search view
                        Circle()
                            .strokeBorder(Color.gray,lineWidth: 0.5)
                            .foregroundColor(.black)
                            .frame(width: 30.0, height: 30.0)
                            .overlay(Image(systemName: "heart")).bold()
                            .font(.system(size: 12))

                            
                            .padding()
                            .accentColor(Color.black)
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous)).background(.white)
                    }//end of button
   
                }.frame(maxWidth: .infinity, alignment: .leading)

                //end of close button HStack
                
                
            
                VStack (alignment: .leading){
                    Text("Listing belongs here!")
                        .bold()
                        .font(.title)
                        .padding()


                    
                    Button(action: {

                    }) {
                        HStack {
                            Spacer()
                                .frame(width: 5.0)
                            Image(systemName: "magnifyingglass")
                            Spacer()
                                .frame(width: 14.0)
                            VStack(alignment: .leading){
                                
                                Text("Search destinations").bold()
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                
                              
                            }
                            
                            
                            Spacer()
                        }
                        .padding()
                        .accentColor(.black)
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )

                        
                    }//end of search button
                    .frame(maxWidth: 350.0)
                    .padding()
                    
                    
                    Spacer().frame(height: 10)
                    
                    //category sliders
                    
                    Spacer().frame(height: 10)

                    
                    
                    
                    
                    
                }//end of vstack section
                .frame(maxWidth: 335)

                .padding()
                .background(.white)
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.01, opacity: 0.2), lineWidth: 0.5)

                )
                .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                
                
                Spacer().frame(height: 20)
                
                
                
                Spacer()
                
                VStack (alignment: .center){
                    Spacer().frame(height: 20)
                    HStack {
                        
                        Spacer().frame(width: 30)
                        
                            Button(action: {
                                
                            }) {
                                VStack (alignment: .leading){
                                    HStack (spacing: 5){
                                        Text("$567")
                                         .bold().foregroundColor(.black)
                                            .font(.system(size: 18))
                                        Text("night")
                                        .fontWeight(.light)
                                        .foregroundColor(.black)
                                        .font(.system(size: 14))
                                    }
                                    Spacer().frame(height: 4)
                                    Text("Mar 28 - Apr 3")
                                    .underline()
                                    .foregroundColor(.black)
                                    .font(.system(size: 14))
                                }
                                
                                
                                
                                
                            }
                            
                            
                            
                   

                        
                        Spacer()
                        Button(action: {
                            
                        }) {
                            HStack {
                                Spacer().frame(width: 20)

                               
                                Text("Reserve")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                
                                Spacer().frame(width: 20)


                                
                            }
                            .padding(15.0)
                            .foregroundColor(.white)
                            .background(Color(red: 1.0, green: 0.2196078431372549, blue: 0.3607843137254902))
                            .cornerRadius(8)
                            }
                        Spacer().frame(width: 30)

                        
                        
                    }//end of bottom footer hstack
                    


                
                
            }
                .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.5)), alignment: .top)
                .background(.white)
            
                
                
        }
    }
        
        
        
        
        
    
}

struct SelectedListing_Previews: PreviewProvider {
    static var previews: some View {
        SelectedListing()
    }
}
