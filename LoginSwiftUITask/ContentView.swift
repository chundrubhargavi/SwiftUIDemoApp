//
//  ContentView.swift
//  LoginSwiftUITask
//
//  Created by Amruta on 21/11/19.
//  Copyright © 2019 Bhargavi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var username: String = ""
  @State var password: String = ""
  @State var isShowAlert = false
  @State var isActivate = false

    var body: some View {
         NavigationView {
            VStack {
             Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.green)
            .padding(.bottom, 20)
             Image("userImg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
             TextField("Enter Your Username", text: $username)
             .padding()
             .background(Color.orange)
             .cornerRadius(30.0)
             .padding(.bottom,10)
              SecureField("Enter Your Password",text: $password)
              .padding()
              .background(Color.orange)
              .cornerRadius(30.0)
              .padding(.bottom,10)
        NavigationLink(destination:DataDisplayView(), isActive:$isActivate) {
                Text("")
        }
           Button(action: {
            if self.username.isEmpty || self.password.isEmpty{
                self.isShowAlert = true
             }
            else {
                self.isActivate = true
            }
            
        })
           {
               Text("Login")
              .font(.headline)
              .foregroundColor(.white)
              .padding()
              .frame(width: 220, height: 60)
              .background(Color.green)
              .cornerRadius(15.0)
                    
           }.alert(isPresented: $isShowAlert){
            Alert(title: Text("Conformation"), message: Text("Please fill all fields"), primaryButton: .default(Text("OK")), secondaryButton: .destructive(Text("Cancel")))

            }
            
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
