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
    @State private var password_four: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Name")) {
                    // Text("Name")
                    TextField("Name", text: $name)
                }
                Section (header: Text("eMail")) {
                    TextField("Email", text: $email)
                }
                Section (header: Text("Passord")) {
                    SecureField("Legg inn passord", text: $password)
                }
                Section (header: Text("Passord two")
                    .padding(5).lineLimit(nil)) {
                    SecureField("Legg inn passord two", text: $password_two)
                }
                Section (header: Text("Passord three")) {
                    SecureField("Legg inn passord three", text: $password_three)
                }
                Section (header: Text("Passord four")) {
                    SecureField("Legg inn passord four", text: $password_four)
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
