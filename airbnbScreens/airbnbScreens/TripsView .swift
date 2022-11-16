//
//  TripsView .swift
//  airbnbScreens
//
//  Created by Ravi  on 11/15/22.
//

import SwiftUI

struct TripsView_: View {
    var body: some View {
        
        VStack{
            
            //button inside a button
            ZStack(alignment: .trailing) {
                        
                        Button(action: {
                            print("outer button pressed")
                        }) {
                            HStack {
                                Text("Button")
                                Spacer()
                            }
                            .padding()
                            .accentColor(.white)
                            .background(Color.accentColor)
                            .clipShape(RoundedRectangle(cornerRadius: 14.0, style: .continuous))
                        }
                        .frame(maxWidth: 200.0)
                        .padding()

                        Button(action: {
                            print("inner button pressed")
                        }) {
                            Circle()
                                .foregroundColor(Color.accentColor.opacity(0.2))
                                .frame(width: 28.0, height: 28.0)
                                .overlay(Image(systemName: "ellipsis"))
                            .padding()
                            .accentColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 14.0, style: .continuous))
                        }
                        .padding()

                    }
            
            
        }//end of Vstack
        
        
    }
}

struct TripsView__Previews: PreviewProvider {
    static var previews: some View {
        TripsView_()
    }
}
