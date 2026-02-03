


import SwiftUI

@available(iOS 17.0, *)
struct ContentView: View {

    @StateObject private var vm = ZoomViewModel()
    @GestureState private var gestureScale: CGFloat = 1

    var body: some View {
        
        ZStack {

            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .scaleEffect(vm.scale * gestureScale)
                .gesture(zoomGesture)
            // MARK: - FlashCards 

            FlashCards {
                CardFront()
            } cardBack: {
                CardBack()
            }
        }

    }//body

    private var zoomGesture: some Gesture {
        MagnifyGesture()
        //As fingers move: gestureScale = 1.1 → 1.3 → 1.5
            .updating($gestureScale) { value, state, _ in
                state = value.magnification
            }
            .onEnded { value in
                vm.scale *= value.magnification
                
                //Take the previous saved zoom and multiply it by the final gesture magnification.”
            }
    }
}
