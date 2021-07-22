//
//  DataEyesTypeRow.swift
//  DataEyes
//
//  Created by MC on 2021/7/22.
//

import SwiftUI

struct DataEyesTypeRow: View {
    let icon: Image
    let title: String
    
    var body: some View {
        HStack {
            icon
                .imageScale(.large)
            
            Text(title)
                .foregroundColor(.primary)
                .bold()
                .font(.title)
        }
    }
}

struct DataEyesTypeRow_Previews: PreviewProvider {
    static var previews: some View {
        DataEyesTypeRow(icon: Image(systemName: "doc.circle"), title: "测试")
    }
}
