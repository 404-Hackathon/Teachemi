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
                .scaledToFill()
                .padding()
            Text(element.name)
                .bold()
                .font(.title)
        }
    }
}


struct ElementRow_Previews: PreviewProvider {
    static var previews: some View {
        ElementRow(element: elements[0])
    }
}
