//
//  DetailView.swift
//  Demo
//
//  Created by 沈 立竑 on 2023/07/18.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            VStack {
                Text("Price")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)

                Text("\(item.price)")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            VStack {
                Text("Keywords")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)

                ForEach(item.keywords, id: \.self) { keyword in
                    Text(keyword)
                        .font(.body)
                        .foregroundColor(.black)
                }
            }

            Spacer()
        }
        .navigationTitle(item.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Item(name: "item1", price: 123, keywords: ["a","b","c"]))
    }
}

