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
                TextField("search element", text: $textFieldInput).padding()
                List(elements, id: \.self) { element in
                    HStack {
                        Image(element.name)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .scaledToFill()
                        Text(element.name)
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
