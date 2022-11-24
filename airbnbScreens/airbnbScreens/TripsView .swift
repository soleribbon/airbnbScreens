//
//  TripsView .swift
//  airbnbScreens
//
//  Created by Ravi  on 11/15/22.
//

import SwiftUI
import MapKit


struct TripsView_: View {
    @State private var showingListings = false
    @State private var mapAppear = false
    @State private var sheetHeight = 570
    @State var searchClicked = false
    @State var shouldHideMapButton = false

    

   
    
    @State private var selectedDetent: PresentationDetent = .height(570)
    
    
    //for map
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.8518, longitude: 14.2681), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    


    var body: some View {
        
        
        //HEADER SECTION
                
            
            VStack{
                
                
                //button inside a button
                ZStack(alignment: .trailing) {
                    
                    Button(action: {
                        print("outer button pressed")
                        searchClicked = true
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
                        //just to redo demo 
                        showingListings = true
                        
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
                
                ZStack(alignment: .bottom){
                    
                    Map(coordinateRegion: $region, showsUserLocation: false, userTrackingMode: .constant(.follow))
                                .frame(width: 400, height: 500).onAppear(perform: {
                                    // ON APPEAR, SHOW LISTINGS SHEET
                                    showingListings = true
                            })
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 10.0)
                    
                } //end Zstack for map & button



                
                
                
        }//end Vstack
            
            .background(Color.white
                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.578), radius: 0.5, x: 0, y: 1)
            )
            .sheet(isPresented: $showingListings){
                
                ZStack {
                    ListingsView()
                    
                    //general statement catching all cases where sheet is not 50
                    if selectedDetent != .height(50){
                        VStack {
                                
                                Button(action: {
                                    selectedDetent = .height(50)
                                    shouldHideMapButton = true
                                    
                                }) {
                                    HStack {
                                        Spacer().frame(width: 10)
                                        Text("Map")
                                            .fontWeight(.semibold)
                                            .font(.title3)
                                        Image(systemName: "map.fill")
                                            .font(.system(size: 12))
                                        Spacer().frame(width: 10)

                                        
                                    }
                                    .padding(13.0)
                                    .foregroundColor(.white)
                                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.097))
                                    .cornerRadius(50)
                                    
                                }
                                
                                
                            }//end of Vstack for button
                            .frame(maxHeight: .infinity, alignment: .bottom)
                        
                        
                    }
                    

                        
                    
                    
                    
                    
                        
                }
                
                .presentationDetents([.height(50), .height(570)], selection: $selectedDetent)            }

                .fullScreenCover(isPresented: $searchClicked) {
                    SearchView()
                }


        
        

        
       

        
        
        
        
        
        

    } //end body view
    


}

// custom for search bar click

struct TripsView__Previews: PreviewProvider {
    static var previews: some View {
        TripsView_()
    }
}
