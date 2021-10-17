//
//  ContentView.swift
//  Daily
//
//  Created by Gatuk Chattanon on 5/9/21.
//

import SwiftUI

struct ContentView: View {
    var presenter: ContentPresenter

    init() {
        self.presenter = ContentPresenter()
    }

    var body: some View {
        Text("Data Eng News")
            .font(.headline)

        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            VStack(alignment: .leading) {
                Text("What is a Data Warehouse?").font(.title2).padding(.bottom, 2.0)
                Text("Unclear what a data warehouse is or when to use one? Then this post is for you. In this post, we go over what a data warehouse is, the need for it, and the differences between using an OLTP and OLAP database as a data warehouse.")
                    .foregroundColor(.gray).padding(.bottom, 2.0)
                HStack {
                    Text("Start Data Engineering").foregroundColor(.gray)
                    Text("Oct 3, 2021").foregroundColor(.gray)
                }
            }
            .padding([.top, .leading, .trailing], 8.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
