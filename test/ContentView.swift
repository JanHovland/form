//
//  ContentView.swift
//  test
//
//  Created by Jan Hovland on 17/10/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//


// Ved å scrolle oppover, kan en se hvilket felt som er valgt


import SwiftUI

struct ContentView : View {

    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var password_two: String = ""
    @State private var password_three: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section  {
                    Text("Name")
                    TextField("Name", text: $name)
                }
                Section  {
                    Text("eMail")
                    TextField("Email", text: $email)
                }
                Section  {
                    Text("Passord")
                    SecureField("Legg inn passord", text: $password)
                }
                Section {
                    Text("Passord two")
                    SecureField("Legg inn passord two", text: $password_two)
                }
                Section {
                    Text("Passord three")
                    SecureField("Legg inn passord two", text: $password_three)
                }
            }
            .navigationBarTitle(Text("Person opplysninger"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
