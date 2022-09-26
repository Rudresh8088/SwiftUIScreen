//
//  FirstView.swift
//  NewFirstPage
//
//  Created by Rudresh Uppin on 25/09/22.
//

import SwiftUI

struct FirstView: View {
   
    @StateObject private var cModel = MyColorViewModel()

    
    var body: some View {
        ScrollView(.vertical){
            ZStack {
                Color(cModel.whiteColor).edgesIgnoringSafeArea(.all)
                VStack{
                    HeaderFirst().environmentObject(cModel)
                        .padding(.top, 30)
                    SearchTwo().environmentObject(cModel)
                        .padding(.vertical, 10)
                    
                    ButtonsTwo().environmentObject(cModel)
                        .padding(.vertical, 10)
                    
                    CardView().environmentObject(cModel)
                        .padding(.top, 10)
                    TabbarView().environmentObject(cModel)
                    
                }
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

struct HeaderFirst: View {
    @EnvironmentObject var cModel: MyColorViewModel

    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("Good Morning")
                    .font(.system(size: 15, weight: .medium, design: .serif))
                    .foregroundColor(Color(cModel.selectedColor))
                Text("Rudresh!")
                    .font(.system(size: 25, weight: .bold, design:.serif))
                    .foregroundColor(Color(cModel.selectedColor))
                    .padding(.top, 5)
            }
            .padding(.leading, 30)
            Spacer()
            Image("Aj").resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 30)
        }
     
    }
}

struct SearchTwo: View {
    @EnvironmentObject var cModel: MyColorViewModel

    var body: some View {
        HStack{
            Text("Search for 3D Products")
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size:26,
                              weight: .medium, design: .serif))
                .foregroundColor(Color(cModel.selectedColor))                .padding(.trailing, 20)
            
        }
        .frame(width: 350, height: 54)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(cModel.selectedColor), lineWidth: 4)
        )
        .background(Color.white)
    }
}

struct ButtonsTwo: View {
    @EnvironmentObject var cModel: MyColorViewModel

    var body: some View {
        HStack(spacing: 25) {
            VStack{
                ZStack{
                    Image(systemName: "clock")
                        .foregroundColor(Color.white)
                }
                .frame(width: 60, height: 60)
                .background(Color(cModel.selectedColor))
                .cornerRadius(10)
                
                Text("Recent")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(cModel.selectedColor))
                    .padding(.top, 10)
            }
            
            VStack{
                ZStack{
                    Image(systemName: "flame")
                        .foregroundColor(Color.gray)
                    
                }
                .frame(width: 60, height: 60)
                .background(Color.white)
                .cornerRadius(10)
                
                Text("Trending")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color.gray)
                    .padding(.top, 10)
            }
            
            VStack{
                ZStack{
                    Image(systemName: "crown")
                        .foregroundColor(Color.gray)
                }
                .frame(width: 60, height: 60)
                .background(Color.white)
                .cornerRadius(10)
                
                Text("popular")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color.gray)
                    .padding(.top, 10)
            }
            
            VStack{
                ZStack{
                    Image(systemName: "diamond")
                        .foregroundColor(Color.gray)
                }
                .frame(width: 60, height: 60)
                .background(Color.white)
                .cornerRadius(10)
                
                Text("Premium")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color.gray)
                    .padding(.top, 10)
            }
        }
    }
}

struct CardView: View {
    
    @EnvironmentObject var cModel: MyColorViewModel
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Recomonded Products")
                    .font(.system(size: 22, weight: .bold, design: .serif))
                    .foregroundColor(Color(cModel.selectedColor))
                ScrollView(.horizontal){
                    HStack(spacing: 40){
                        VStack(alignment: .leading){
                            Image("Geometry")
                                .resizable()
                            VStack{
                                Text("Hold up a rectangular piece of paper and ask all the students ")
                                    .font(.system(size: 15, weight: .medium, design: .serif))
                                    .foregroundColor(Color(cModel.selectedColor))
                                    .lineLimit(3)
                                    .padding(.top, 5)
                                    .padding(.leading, 10)
                                    .padding(.bottom, 15)
                            }.frame(height: 100)
                            
                            
                        }
                        .frame(width: 280, height: 280)
                        .background(Color.white)
                        .cornerRadius(25)
                        
                        VStack(alignment: .leading){
                            Image("Abstract")
                                .resizable()
                            VStack{
                                Text("Abstract 3D Elements")
                                    .font(.system(size: 15, weight: .medium, design: .serif))
                                    .foregroundColor(Color(cModel.selectedColor))
                                    .lineLimit(3)
                                    .padding(.top, 5)
                                    .padding(.leading, 10)
                                    .padding(.bottom, 15)
                            }.frame(height: 100)
                            
                            
                        }
                        .frame(width: 280, height: 280)
                        .background(Color.white)
                        .cornerRadius(25)
                    }
                }.padding(.top, 20)
            }
            .padding(.leading, 30)
        }

    }
}

struct TabbarView: View {
    
    @EnvironmentObject var cModel: MyColorViewModel
    
    var body: some View {
        HStack(spacing: 60) {
            VStack {
                Image(systemName: "house")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            VStack {
                Image(systemName: "heart")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
                
            }
            
            VStack {
                Image(systemName: "cube")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
                
            }
            VStack {
                Image(systemName: "person")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            
        }
        .frame(height: 60)
        .frame(maxWidth: .infinity)
        .background(Color(cModel.selectedColor))
        .cornerRadius(20)
    }
}
