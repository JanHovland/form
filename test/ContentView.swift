//
//  ContentView.swift
//  test
//
//  Created by Jan Hovland on 17/10/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack {
                        Text("Name")
                        TextField("Name", text: $name)
                    
                        Spacer()
                            Text("eMail")
                            TextField("Email", text: $email)
                   
                        Spacer()
                    
                        Text("Passord")
                        SecureField("Legg inn passord", text: $password)
                    
                        
                    }
                }
            }
            .padding()
            .navigationBarTitle(Text("Person opplysninger"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
