//
//  learn.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/17/23.
//

import SwiftUI

struct learn: View {
    @State private var animalsClicked = false
    @State private var childrenClicked = false
    @State private var foodClicked = false
    @State private var environmentClicked = false
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        VStack {
            Text("Learning Hub")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.top, 25.0)
            HStack {
                ZStack{
                    Rectangle()
                    Button("Animals") {
                        animalsClicked.toggle()
                    }
                }
                ZStack{
                    Rectangle()
                    Button("Children") {
                        childrenClicked.toggle()
                    }
                }
                ZStack{
                    Rectangle()
                    Button("Food") {
                        foodClicked.toggle()
                    }
                }
                ZStack{
                    Rectangle()
                    Button("Environment") {
                        environmentClicked.toggle()
                    }
                }
            }
            .frame(height: 100.0)
//            Button("summer"){
//                                isSummerButtonClicked.toggle()
//                            }
//                            .font(.largeTitle)
//                            .buttonStyle(.borderedProminent)
//                            .tint(.black)
//                            .frame(height: 75)
//                            //add summer image if button is clicked
//                            ZStack{
//                                if(isSummerButtonClicked == true){
//                                    Image("summer")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .edgesIgnoringSafeArea(.all)
//                                }
//                            }

            
            
        }
    }
}

struct learn_Previews: PreviewProvider {
    static var previews: some View {
        learn()
    }
}
