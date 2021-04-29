//
//  ContentView.swift
//  Teachemi
//
//  Created by Haider Alboloushi on 30/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldInput = ""
    @State var isSearching = false
    @State var list = elements
    var body: some View {
        NavigationView {
            VStack {
                TextField("search element", text: $textFieldInput).padding()
                List(elements.filter({
                    "\($0)".contains(textFieldInput) ||
                        textFieldInput.isEmpty ||
                        textFieldInput.isEmpty ? true :
                        "\($0)".lowercased().contains(textFieldInput.lowercased())
                }), id: \.self) { element in
                    NavigationLink(destination: ElementDetails(element: element)) {
                        ElementRow(element: element)
                    }
                }
            }.navigationTitle("Elements")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

