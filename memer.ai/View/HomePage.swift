//
//  HomePage.swift
//  memer.ai
//
//  Created by Prashanna Rajbhandari on 26/04/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            Color("grayBGColor")
                .ignoresSafeArea()
            
            HomePageElements()
        }
    }
}

//TODO: make the bleeding edge disappear
extension HomePageElements{
    //MARK: Custom Button
    private func buttonView(btnName: String, imageName: String) -> some View{
        HStack{
            Rectangle()
                .overlay(alignment: .leading, content: {
                    Text(btnName)
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .fontWeight(.semibold)
                        .padding()
                })
                .overlay(alignment: .trailing,content: {
                    Rectangle()
                        .frame(width: 70, height: 80)
                        .foregroundColor(Color("lightGray"))
                        .overlay {
                            Image(systemName: imageName)
                                .resizable()
                                .scaledToFit()
                                .padding()
                                
                        }.padding(.leading)
                })
                
                .frame(width: 200,height: 80)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)

        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

//MARK: HomePageElements
struct HomePageElements: View {
    var body: some View {
        VStack{
            Image("memerLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 200)
            
            Text("memer.ai")
                .font(.title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
            
            
            NavigationLink {
                MemeView()
            } label: {
                buttonView(btnName: "Camera", imageName: "camera.fill")
            }
            .padding()
            
            NavigationLink {
                MemeView()
            } label: {
                buttonView(btnName: "Gallery", imageName: "photo.stack")
            }

            
            
            
        }
    }
}
