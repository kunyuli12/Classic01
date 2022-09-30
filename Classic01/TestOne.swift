//
//  TestOne.swift
//  Classic01
//
//  Created by 暨大附中03 on 2022/3/8.
//

import SwiftUI

struct TestOne: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 200, height:110)
                    .cornerRadius(25)
                    .padding(30)
                    .foregroundColor(.black)
                Rectangle()
                    .frame(width: 190, height:100)
                    .cornerRadius(20)
                    .padding(30)
                    .foregroundColor(.gray)
                Text("我是排版一")
                    .font(.title)
                    .bold()
                
            }
            ZStack {
                Rectangle()
                    .frame(width: 200, height:110)
                    .cornerRadius(25)
                    .padding(30)
                    .foregroundColor(.black)
                Rectangle()
                    .frame(width: 190, height:100)
                    .cornerRadius(20)
                    .padding(30)
                .foregroundColor(.gray)
                Text("我是排版二")
                    .font(.title)
                    .bold()

            }
        }
    }
}

struct TestOne_Previews: PreviewProvider {
    static var previews: some View {
        TestOne()
    }
}
