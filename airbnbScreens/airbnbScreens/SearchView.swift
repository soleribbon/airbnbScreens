//
//  SearchView.swift
//  airbnbScreens
//
//  Created by Admin on 11/21/22.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State var segmentationSelection : staysAndExperiences = .stays
    enum staysAndExperiences : String, CaseIterable {
        case stays = "Stays"
        case experiences = "Experiences"
    }
    
    var body: some View {
        
        
        
        ZStack (alignment: .topLeading){
            //CONTROLS BACKGROUND OPACITY
            Color.white.opacity(0.8).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer().frame(height: 10)
                
                HStack (alignment: .center){
                    Spacer().frame(width: 5)

                    Button(action: {
                        dismiss()
                        
                    }) {
                        //for x out of search view
                        Circle()
                            .strokeBorder(Color.gray,lineWidth: 0.5)
                            .foregroundColor(.black)
                            .frame(width: 30.0, height: 30.0)
                            .overlay(Image(systemName: "xmark"))
                            .font(.system(size: 12))

                            
                            .padding()
                            .accentColor(Color.black)
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
                        
                    }
                    
                    
                    Picker("", selection: $segmentationSelection) {
                                ForEach(staysAndExperiences.allCases, id: \.self) { option in
                                    Text(option.rawValue)
                                }
                            }.pickerStyle(SegmentedPickerStyle())
                                .padding()
                    
                    
                    
                }//end of HStack
                
                
            
                VStack (alignment: .leading){
                    Text("Where to?")
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
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            //start category item
                            Button(action: {
                                
                            }) {
                                VStack (alignment: .leading){
                                    Spacer().frame(height: 5)
                                    Image("world")
                                            .cornerRadius(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10)
                                                .stroke(.black, lineWidth: 1.5))
                                    Spacer().frame(height: 10)

                                    Text("I'm flexible").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                        .padding(.leading, 1)

                                }
                                .padding(.leading, 8.0)
                                
                                
                                
                            }//end category item
                            
                            //start category item
                            Button(action: {
                                
                            }) {
                                VStack (alignment: .leading){
                                    Spacer().frame(height: 5)
                                    Image("world")
                                            .cornerRadius(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10)
                                                .stroke(.gray, lineWidth: 1))
                                    Spacer().frame(height: 10)

                                    Text("Europe").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                        .font(.system(size: 14))
                                        .padding(.leading, 1)

                                }
                                
                                
                                
                                
                            }//end category item
                            
                            
                            //start category item
                            Button(action: {
                                
                            }) {
                                VStack (alignment: .leading){
                                    Spacer().frame(height: 5)
                                    Image("world")
                                            .cornerRadius(10)
                                            .overlay(RoundedRectangle(cornerRadius: 10)
                                                .stroke(.gray, lineWidth: 1))
                                    Spacer().frame(height: 10)

                                    Text("South Africa").foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.089))
                                        .font(.system(size: 14))
                                        .padding(.leading, 1)

                                }
                                
                                
                                
                            }//end category item
                            
                            
                            
                        }//END HSTACK
                        
                    }.padding(.leading, 10) //end of scrollview
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
                
                //start of next section
                VStack (alignment: .leading){
                    Spacer().frame(height: 8)

                    HStack {
                        Spacer().frame(width: 10)
                        Text("When").foregroundColor(.gray).bold().font(.system(size: 14))
                            
                        Spacer()
                        Text("Any week").bold().font(.system(size: 14))
                        Spacer().frame(width: 10)

                    }
                    Spacer().frame(height: 8)

 
                    
                    
                }//end of vstack section
                .frame(maxWidth: 335)

                .padding()
                .background(.white)
                .cornerRadius(12) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.01, opacity: 0.2), lineWidth: 0.5)

                )
                .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                
                Spacer().frame(height: 20)

                //start of next section
                VStack (alignment: .leading){
                    Spacer().frame(height: 8)

                    HStack {
                        Spacer().frame(width: 10)
                        Text("Who").foregroundColor(.gray).bold().font(.system(size: 14))
                            
                        Spacer()
                        Text("Add guests").bold().font(.system(size: 14))
                        Spacer().frame(width: 10)

                    }
                    Spacer().frame(height: 8)

 
                    
                    
                }//end of vstack section
                .frame(maxWidth: 335)

                .padding()
                .background(.white)
                .cornerRadius(12) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.01, opacity: 0.2), lineWidth: 0.5)

                )
                .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                
                Spacer()
                
                VStack (alignment: .center){
                    Spacer().frame(height: 20)
                    HStack {
                        
                        Spacer().frame(width: 30)
                        Button(action: {
                            
                        }) {
                            Text("Clear all")
                                .bold()
                                .font(.system(size: 16))
                                .foregroundColor(.black)
                                .underline()
                            
                        }
                        
                        
                        Spacer()
                        Button(action: {
                            
                        }) {
                            HStack {
                                Spacer().frame(width: 5)

                                Image(systemName: "magnifyingglass").bold()
                                Text("Search")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer().frame(width: 5)


                                
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
    .background(BackgroundBlurView())
        
        
        
        

    
        
    }
}

//for background blur
struct BackgroundBlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
