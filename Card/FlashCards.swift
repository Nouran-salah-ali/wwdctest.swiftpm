//
//  SwiftUIView.swift
//  wwdctest
//
//  Created by nouransalah on 14/08/1447 AH.
//

import SwiftUI

struct FlashCards<CardFront,CardBack>: View where  CardFront:View, CardBack:View{
    // MARK: - struct expect front and back

    var cardFront:()-> CardFront
    var cardBack:()-> CardBack
    @State var isFlipped:Bool = false
    @State var flashCardRotation = 0.0
    
    init(@ViewBuilder cardFront: @escaping () -> CardFront, @ViewBuilder cardBack: @escaping () -> CardBack) {
        self.cardFront = cardFront
        self.cardBack = cardBack
       
    }

//    var cardFront:CardFront
//    var cardBack:CardBack
    
    var body: some View {
        // MARK: - show front or back if isFlipped
        ZStack{
            if isFlipped{
                cardBack()
                // MARK: - flip the back content again so i can read it

                    .rotation3DEffect(.degrees(180),
                        axis: (x: 0, y: 1, z: 0)
                    )
                
            }
            else{
                cardFront() }
        }//zstack
        .onTapGesture {
            flipFlashCard()
        }
        .rotation3DEffect(.degrees(flashCardRotation), axis:     (x: 0.0, y: 1.0, z: 0.0))
        
    }//body
    
    // MARK: - CHANGE VALUE OF FLIP

    func flipFlashCard(){
        withAnimation(Animation.linear(duration: 0.9)){
            flashCardRotation += 180
            isFlipped.toggle()
        }
        
    }
}//struct

//#Preview {
//    FlashCards()
//}
