//
//  DividerView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye Tetteh on 14/12/2021.
//

import SwiftUI

struct DividerView: View {
    
    @State var label: String = ""
        let horizontalPadding: CGFloat
        let color: Color

        init(label: String, horizontalPadding: CGFloat = 5, color: Color = .white) {
            self.label = label
            self.horizontalPadding = horizontalPadding
            self.color = color
        }

        var body: some View {
            HStack {
                line
                Text(label).foregroundColor(color)
                line
            }.foregroundColor(color)        }

        var line: some View {
            VStack { Divider()
                    .background(color)
                    .foregroundColor(color)
            }.padding(horizontalPadding)
        }
}
struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView(label: "or")
            .preferredColorScheme(.dark)
    }
}
