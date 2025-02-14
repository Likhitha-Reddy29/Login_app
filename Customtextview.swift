//
//  Customtextview.swift
//  Login
//
//  Created by Likhitha on 23/07/24.
//

import SwiftUI

struct Customtextview: View {
    var hint: String
    @Binding var text: String
    
    @FocusState var isEnabled: Bool
    var body: some View {
        VStack(alignment: .leading, spacing:15){
            TextField(hint, text:$text)
                .textContentType(.telephoneNumber)
                .focused($isEnabled)
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.black.opacity(0.2))
                
                Rectangle()
                    .fill(.black)
                    .frame(width:isEnabled ? nil : 0,alignment: .leading)
                    .animation(.easeInOut(duration: 0.3), value: isEnabled)
            }
            .frame(height:2)
        }
    }
}

struct Customtextview_Previews: PreviewProvider {
    static  var previews: some View {
        ContentView()
    }
}
