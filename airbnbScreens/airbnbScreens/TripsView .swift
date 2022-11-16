//
//  TripsView .swift
//  airbnbScreens
//
//  Created by Ravi  on 11/15/22.
//

import SwiftUI

struct TripsView_: View {
    var body: some View {
        
        //HEADER SECTION
       
        VStack{
            
            //button inside a button
            ZStack(alignment: .trailing) {
                
                Button(action: {
                    print("outer button pressed")
                }) {
                    HStack {
                        Spacer()
                            .frame(width: 5.0)
                        Image(systemName: "magnifyingglass")
                        Spacer()
                            .frame(width: 14.0)
                        VStack(alignment: .leading){
                            
                            Text("Where to?").bold()
                                .font(.system(size: 14))
                            
                            Text("Anywhere • Any week • Add guests")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                                .font(.system(size: 12))
                            
                        }
                        
                        
                        Spacer()
                    }
                    .padding()
                    .accentColor(.black)
                    
                    .clipShape(RoundedRectangle(cornerRadius: 14.0, style: .continuous))
                    .background(
                        RoundedRectangle(cornerRadius: 30.0)
                            .fill(.white)
                        
                    )
                    .shadow(color: .gray.opacity(0.4), radius: 6, x: 0, y: 0)
                    
                }
                .frame(maxWidth: 350.0)
                .padding()
                
                
                
                Button(action: {
                    print("inner button pressed")
                }) {
                    Circle()    .strokeBorder(Color.gray,lineWidth: 0.5)
                        .foregroundColor(.white)
                        .frame(width: 40.0, height: 40.0)
                        .overlay(Image("filterIcon"))
                        .padding()
                        .accentColor(Color.black)
                    
                    
                        .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
                    
                }
                .padding()
            } //end of Zstack for search button
            
            
            //category sliders
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    //start category item
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image("treehouses")
                            Text("Treehouses").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14))
                        }.padding(.leading, 10.0)
                        
                        
                    }//end category item
                    
                    
                    //start category item
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image("countryside")
                            Text("Countryside").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14))
                        }
                        
                        
                    }//end category item
                    
                    //start category item
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image("castles")
                            Text("Castles").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14))
                            
                        }
                        
                        
                    }//end category item
                    
                    //start category item
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image("vinyard")
                            Text("Vinyards").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14))
                            
                        }
                        
                        
                    }//end category item
                    
                    //start category item
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image("mansions")
                            Text("Mansions").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                .font(.system(size: 14))
                            
                        }
                        
                        
                    }//end category item

                }//END HSTACK
                
            }.padding(.leading, 10) //end of scrollview
            
            Divider()
            
            
            
            
            
            //LISTING SECTION
            ScrollView (.vertical, showsIndicators: false){
                VStack {
                    
                    
                    
                    Spacer().frame(height: 10)

                    
                    //start category item
                    ZStack {
                        
                        
                        Button(action: {
                            
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
            }
            
            
        }
        
        .background(Color.white
            .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.578), radius: 0.5, x: 0, y: 1)
        )//end of Vstack
        
       

        
        
        
        
        
        

    }

}

struct TripsView__Previews: PreviewProvider {
    static var previews: some View {
        TripsView_()
    }
}
