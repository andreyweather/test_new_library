//
//  ContentView.swift
//  test_new_library
//
//  Created by andrey.pogodin on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
       
            Button(action: {
                
                let user = ["fields": ["email": "apple_email29@gmail.com", "phone": "+79207776050", "firstName": "Andrey"]]
                
                
                do {
                       try subscribeNew_N(subscriberInfo: user)
                                  
                      } catch {
                          
                         print("Error")
                          
                  }
                
              
                
            }){
                Text("Добавить")
            }
            Button(action: {
                

                do {
                       try logOut()
                                  
                      } catch {
                          
                         print("Error")
                          
                  }

                
            }){
                Text("Выйти из профиля")
            }
        }
        .padding()
        .onAppear{
            
            enkodConnect(_account: "andrey_pogodin3")
            
        }
    }
}

#Preview {
    ContentView()
}
