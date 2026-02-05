//
//  ContentView.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//

import SwiftUI




struct ContentView: View {
    
    @State private var headlines = [News]()
    @State private var messages = [Message]()
   
    @Environment(\.networkManager) var networkManager
    
    var body: some View {
        List {
            Section("Headlines") {
                ForEach(headlines) { headline in
                    VStack(alignment: .leading) {
                        Text(headline.title)
                            .font(.headline)
                        
                        Text(headline.strap)
                    }
                    
                }
            }
            Section("Messages") {
                ForEach(messages) { message in
                    VStack {
                        Text(message.from)
                            .font(.headline)
                        
                        Text(message.text)
                    }
                }
            }
        }
        .task {
            do {
                headlines = try await networkManager.fetch(.headlines)
                
                messages = try await networkManager.fetch(.messages)
            
            } catch {
                print("Error handling is a smart move!")
            }
        }
    }
}

#Preview {
    ContentView()
}
