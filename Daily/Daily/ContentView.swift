//
//  ContentView.swift
//  Daily
//
//  Created by Gatuk Chattanon on 5/9/21.
//

import SwiftUI

struct ContentView: View {
    var presenter: ContentPresenter

    @State var contents = [ContentModel]()

    init() {
        self.presenter = ContentPresenter()
    }

    var body: some View {
        Text("Data Eng News")
            .font(.headline)


        List(self.contents) { content in
            VStack(alignment: .leading) {
                Text(content.title).font(.title2).padding(.bottom, 2.0)
                Text(content.summary).foregroundColor(.gray).padding(.bottom, 2.0)
                HStack {
                    Text(content.author).foregroundColor(.gray)
                    Text(content.datetime).foregroundColor(.gray)
                }
            }
            .padding([.top, .leading, .trailing], 8.0)
        }.onAppear() {
            self.contents = presenter.loadContents() ?? [ContentModel]()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
