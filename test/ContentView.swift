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

    @State private var Fornavn: String = ""
    @State private var Etternavn: String = ""
    @State private var eMail: String = ""
    @State private var Adresse: String = ""
    @State private var Telefon: String = ""
    @State private var Sted: String = ""
    @State private var Kommune: String = ""
    @State private var Born: String = ""
    @State private var Gender: String = ""
    @State private var Ekstra: String = ""
 
    var body: some View {
        NavigationView {
            Form {
                Section { // Det kan bare være 10 elementer i en section!
                    TextField("Legg inn fornavn", text: $Fornavn)
                        .padding(8)
                    TextField("Legg inn etternavn", text: $Etternavn)
                        .padding(8)
                    SecureField("Legg inn e-post", text: $eMail)
                        .padding(8)
                    SecureField("Legg inn adresse", text: $Adresse)
                        .padding(8)
                    SecureField("Legg inn telefon", text: $Telefon)
                        .padding(8)
                    SecureField("Legg inn sted", text: $Sted)
                        .padding(8)
                    TextField("Legg inn kommune", text: $Kommune)
                        .padding(8)
                    TextField("Legg inn født", text: $Born)
                        .padding(8)
                    TextField("Legg inn kjønn", text: $Gender)
                        .padding(8)
                    TextField("Legg inn ekstra", text: $Ekstra)
                        .padding(8)
                    
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
