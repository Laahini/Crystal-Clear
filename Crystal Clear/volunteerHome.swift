//
//  volunteerHome.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/17/23.
//

import SwiftUI

struct volunteerHome: View {
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        ZStack {
            Image("bkg2").resizable()
            VStack {
                Text("Latest Projects")
                    .font(.title)
                    .padding(.top, 25.0)
                ZStack {
                    Rectangle()
                        .fill(Color(red: -0.002, green: 0.479, blue: 0.999)).padding(.all, 20.0).cornerRadius(20)
                    VStack{
                        Text("Books Buddies")
                            .font(.title)
                        Text("By: Books for Fun")
                        Text("Become a bookworm! We are looking for children books including picture books and chapter books from common series.")
                            .frame(width: deviceWidth-50)
                    }
                }
                ZStack {
                    Rectangle()
                        .fill(Color(red: -0.002, green: 0.479, blue: 0.999)).padding(.all, 20.0).cornerRadius(20)
                    VStack{
                        Text("Ramadan Food Drive")
                            .font(.title)
                        Text("By: Generous Kitchen")
                        Text("Help refugee families in Indonesia by doonating items forr Ramadan.")
                            .frame(width: deviceWidth-50)
                    }
                }
                ZStack {
                    Rectangle()
                        .fill(Color(red: -0.002, green: 0.479, blue: 0.999)).padding(.all, 20.0).cornerRadius(20)
                    VStack{
                        Text("Books Buddies")
                            .font(.title)
                        Text("By: Books for Fun")
                        Text("Become a bookworm! We are looking for children books including picture books and chapter books from common series.")
                            .frame(width: deviceWidth-50)
                    }
                }
            }
        }
    }
}

struct volunteerHome_Previews: PreviewProvider {
    static var previews: some View {
        volunteerHome()
    }
}
