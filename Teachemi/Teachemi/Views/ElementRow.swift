//
//  ElementRow.swift
//  Teachemi
//
//  Created by Haider Alboloushi on 30/04/2021.
//

import SwiftUI

struct ElementRow: View {
    let element: Element
    var body: some View {
        HStack {
            Image(element.name)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(20)
                .scaledToFit()
                .padding()
                .shadow(radius: 10)
            Text(element.name)
                .bold()
                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 0.4341446143, green: 0.446670065, blue: 0.8549019608, alpha: 1)))
        }
    }
}


struct ElementRow_Previews: PreviewProvider {
    static var previews: some View {
        ElementRow(element: elements[0])
    }
}
