//
//  ElementDetails.swift
//  Teachemi
//
//  Created by Haider Alboloushi on 30/04/2021.
//

import SwiftUI

struct ElementDetails: View {
    let element: Element
    var body: some View {
        ZStack {
            Image(element.name)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 20)
            VStack {
                Spacer()
                Image(element.name)
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .scaledToFill()
                    .cornerRadius(20)
                    .shadow(radius: 15)
                    .padding()
                VStack {
                    Text(element.symbol)
                        .bold()
                        .font(.largeTitle)
                    Text(element.name)
                        .font(.title)
                }
                .padding()
                Text("Atomic Number: \(element.atomicNum)")
                    .font(.title)
                Text(String(format: "%.3f", element.mass))
                    .font(.title)
                Spacer()
                Text("Element Number \(element.atomicNum)!")
                    .font(.largeTitle).bold()
                Spacer()
                Spacer()
            }
        }
    }
}

struct ElementDetails_Previews: PreviewProvider {
    static var previews: some View {
        ElementDetails(element: elements[0])
    }
}
