//
//  ContentView.swift
//  Bookworm
//
//  Created by Larry Nguyen on 9/15/20.
//  Copyright © 2020 Larry Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""

    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id:\.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    Picker("Rating", selection: $rating) {
                        ForEach(0..<6) {
                            Text("\($0)")
                        }
                    }
                    TextField("Write a review", text: $review)
                }
                
                Section {
                    Button("Save") {
                        // add book
                    }
                }
            }
        .navigationBarTitle("Add Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
