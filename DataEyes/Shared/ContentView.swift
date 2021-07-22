//
//  ContentView.swift
//  Shared
//
//  Created by MC on 2021/7/22.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectedRow: Int? = 0
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                List {
                    NavigationLink(destination: NetworkDetailView(), tag: 0, selection: $selectedRow) {
                        DataEyesTypeRow(icon: Image(systemName: "antenna.radiowaves.left.and.right"), title: "网络看板")
                    }
                    NavigationLink(destination: NetworkDetailView(), tag: 1, selection: $selectedRow) {
                        DataEyesTypeRow(icon: Image(systemName: "antenna.radiowaves.left.and.right"), title: "卡顿卡板")
                    }
         
                }
                .frame(minWidth: 100, maxWidth: 300)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
