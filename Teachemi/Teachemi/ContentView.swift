//
//  ContentView.swift
//  Teachemi
//
//  Created by Haider Alboloushi on 30/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldInput = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "1.magnifyingglass")
                        .padding(.leading)
                        .foregroundColor(.gray)
                    TextField("search element", text: $textFieldInput).padding()
                }
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
        }.accentColor(Color(#colorLiteral(red: 0.8588235294, green: 0.5998145082, blue: 0.561995576, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

