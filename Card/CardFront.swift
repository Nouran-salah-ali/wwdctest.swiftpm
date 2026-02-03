//
//  Card.swift
//  wwdctest
//
//  Created by nouransalah on 14/08/1447 AH.
//

import SwiftUI

@available(iOS 17.0, *)
struct CardFront: View {
    var body: some View {
        
        
        ZStack{
            // MARK: - Rectangle
            Rectangle()
                .background()
                .frame(width: 280,height:400)
                .cornerRadius(20)
                .foregroundColor(Color("green1"))
            // MARK: - pattern
            CirclePattern()
                .frame(width: 280, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            // MARK: - logo and text (data)
            VStack(spacing :8){
                Image(systemName: "heart.fill")
                    .font(.system(size: 36))
                .foregroundColor(Color.white)
            
            Text("Be Proude of your self front")
                .foregroundColor(Color.white)
                .font(.system(size: 20))
                .bold()
            }

            
        }//z
        
    }//body
}//struct
#Preview {

    if #available(iOS 17.0, *) {
        CardFront()
    } else {
        // Fallback on earlier versions
    }

}

