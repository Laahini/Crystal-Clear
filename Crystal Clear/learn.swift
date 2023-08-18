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
    @Environment(\.openURL) var openURL
    @State var factsAnimals = ["I am seventeen", "I have a younger brother", "I was born in India", "I have an art account on Instagram"]
    @State var facta = ""
    @State var factsChild = ["I am seventeen", "I have a younger brother", "I was born in India", "I have an art account on Instagram"]
    @State var factc = ""
    @State var factsFood = ["I am seventeen", "I have a younger brother", "I was born in India", "I have an art account on Instagram"]
    @State var factf = ""
    @State var factsEnviron = ["I am seventeen", "I have a younger brother", "I was born in India", "I have an art account on Instagram"]
    @State var facte = ""
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        ZStack {
            Image("bkg2").resizable()
            VStack {
                Text("Learning Hub")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.top, 25.0).position(x: 196, y:80)
                HStack (spacing: 5) {
                    ZStack{
                        Rectangle().frame(height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Button("🐶") {
                            if(childrenClicked==true){
                                childrenClicked.toggle()
                            }
                            else if (foodClicked==true)
                            {
                                foodClicked.toggle()
                            }
                            else if (environmentClicked == true)
                            {
                                environmentClicked.toggle()
                            }
                            animalsClicked.toggle()
                        }
                        .font(.largeTitle)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                    }
                    ZStack
                    {
                        Rectangle().frame(height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Button("🧒") {
                            if(animalsClicked==true){
                                animalsClicked.toggle()
                            }
                            else if (foodClicked==true)
                            {
                                foodClicked.toggle()
                            }
                            else if (environmentClicked == true)
                            {
                                environmentClicked.toggle()
                            }
                            childrenClicked.toggle()
                        }.font(.largeTitle)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                    }
                    ZStack{
                        Rectangle().frame(height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Button("🍇") {
                            if(animalsClicked==true){
                                animalsClicked.toggle()
                            }
                            else if (childrenClicked==true)
                            {
                                childrenClicked.toggle()
                            }
                            else if (environmentClicked == true)
                            {
                                environmentClicked.toggle()
                            }
                            foodClicked.toggle()
                        }.font(.largeTitle)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            .frame(height: 75)
                    }
                    ZStack{
                        Rectangle().frame(height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Button("🌱") {
                            if(animalsClicked==true){
                                animalsClicked.toggle()
                            }
                            else if (foodClicked==true)
                            {
                                foodClicked.toggle()
                            }
                            else if (childrenClicked == true)
                            {
                                childrenClicked.toggle()
                            }
                            environmentClicked.toggle()
                        }.font(.largeTitle)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            .frame(height: 75)
                    }
                }.padding(.all, 10.0).position(x: 196, y:10)
                VStack {
                        if(animalsClicked == true) {
                            Text("Animal Resources")
                                .multilineTextAlignment(.center)
                                .font(.title)
                            //Animal Shelters
                            Button("Volunteer at Shelters"){
                                openURL(URL(string: "https://www.instagram.com/laa.hini_a/")!)
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                            
                            Button("Animal Abuse Hotline"){
                                openURL(URL(string: "https://www.peta.org/about-peta/contact-peta/report-cruelty/")!)
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                            
                            Button("50 Ways to Help"){
                                openURL(URL(string: "https://www.humanesociety.org/resources/50-ways-help-animals")!)
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                            //facts
                            Button("\t\tShocking Statistics\t\t"){
                                let randomFactNumber = Int.random(in:0..<factsAnimals.count)
                                facta = factsAnimals[randomFactNumber]
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50).frame(height: 50)
                            //output
                            Text(facta)
                                .fontWeight(.semibold)
                                .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                                .font(.headline)
                        }
                    else if (childrenClicked == true)
                    {
                        Text("Children Resources")
                            .multilineTextAlignment(.center)
                            .font(.title)
                        //Animal Shelters
                        Button("Volunteer at Shelters"){
                            openURL(URL(string: "https://www.instagram.com/laa.hini_a/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("Animal Abuse Hotline"){
                            openURL(URL(string: "https://www.peta.org/about-peta/contact-peta/report-cruelty/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("50 Ways to Help"){
                            openURL(URL(string: "https://www.humanesociety.org/resources/50-ways-help-animals")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                    
                        //facts
                        Button("\t\tShocking Statistics\t\t"){
                            let randomFactNumber = Int.random(in:0..<factsChild.count)
                            factc = factsChild[randomFactNumber]
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50).frame(height: 50)
                        //output
                        Text(factc)
                            .fontWeight(.semibold)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                            .font(.headline)

                    }
                    else if (foodClicked == true)
                    {
                        Text("Food Scarcity Resources")
                            .multilineTextAlignment(.center)
                            .font(.title)
                        //Animal Shelters
                        Button("Volunteer at Shelters"){
                            openURL(URL(string: "https://www.instagram.com/laa.hini_a/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("Animal Abuse Hotline"){
                            openURL(URL(string: "https://www.peta.org/about-peta/contact-peta/report-cruelty/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("50 Ways to Help"){
                            openURL(URL(string: "https://www.humanesociety.org/resources/50-ways-help-animals")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                    
                        //facts
                        Button("\t\tShocking Statistics\t\t"){
                            let randomFactNumber = Int.random(in:0..<factsFood.count)
                            factf = factsFood[randomFactNumber]
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50).frame(height: 50)
                        //output
                        Text(factf)
                            .fontWeight(.semibold)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                            .font(.headline)

                    }
                    else if (environmentClicked == true)
                    {
                        Text("Environment Resources")
                            .multilineTextAlignment(.center)
                            .font(.title)
                        //Animal Shelters
                        Button("Volunteer at Shelters"){
                            openURL(URL(string: "https://www.instagram.com/laa.hini_a/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("Animal Abuse Hotline"){
                            openURL(URL(string: "https://www.peta.org/about-peta/contact-peta/report-cruelty/")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                        
                        Button("50 Ways to Help"){
                            openURL(URL(string: "https://www.humanesociety.org/resources/50-ways-help-animals")!)
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50)
                    
                        //facts
                        Button("\t\tShocking Statistics\t\t"){
                            let randomFactNumber = Int.random(in:0..<factsEnviron.count)
                            facte = factsEnviron[randomFactNumber]
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568)).frame(height: 50).frame(height: 50)
                        //output
                        Text(facte)
                            .fontWeight(.semibold)
                            .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                            .font(.headline)

                    }
                }.position(x: 196, y:0)
            }
        }.edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct learn_Previews: PreviewProvider {
    static var previews: some View {
        learn()
    }
}
