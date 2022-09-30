//
//  TestTwo.swift
//  Classic01
//
//  Created by 暨大附中03 on 2022/3/8.
//

import SwiftUI

struct TestTwo: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 200, height:110)
                    .cornerRadius(25)
                    .foregroundColor(.black)
                Rectangle()
                    .frame(width: 190, height:100)
                    .cornerRadius(20)
                    .foregroundColor(.gray)
                Text("我是排版一")
                    .font(.title)
                    .bold()
            }
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 200, height:110)
                    .cornerRadius(25)
                    .foregroundColor(.black)
                Rectangle()
                    .frame(width: 190, height:100)
                    .cornerRadius(20)
                .foregroundColor(.gray)
                Text("我是排版二")
                    .font(.title)
                    .bold()
            }
            Spacer()
        }
    }
}

struct TestTwo_Previews: PreviewProvider {
    static var previews: some View {
        TestTwo()
    }
}
