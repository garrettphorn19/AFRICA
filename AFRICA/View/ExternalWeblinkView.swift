//
//  ExternalWeblinkView.swift
//  AFRICA
//
//  Created by Garrett Horn on 8/16/22.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                                
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                    Image(systemName: "arrow.up.right.square")
                }//: GROUP
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
