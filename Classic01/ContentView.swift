//
//  ContentView.swift
//  Classic01
//
//  Created by kai wen chen on 2021/8/31.
//

/*
 作業目標
 以三個元件應用組合UI
 Rectangle,Circle,Stack
 屬性可參考老師的範例去應用
 */

import SwiftUI

struct ContentView: View {
    
    @State var onOff = false
    
    var body: some View {
        ZStack {
            Rectangle() //方形
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            VStack(alignment:.leading) {
                Circle() //圓形
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)))
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        withAnimation(.spring(response: 1, dampingFraction: 0.1, blendDuration: 1)){
                            onOff.toggle()
                        }
                    }
                
                Text("Bill") //文字
                    .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))])
                    .font(.title)
                    
                
                Text("文字敘述")
                    .foregroundColor(.white)
                    .font(.subheadline)
            }
            .frame(height: onOff ? 600:200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .frame(maxWidth:.infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading))
            .clipShape(RoundedRectangle(cornerRadius: 36))
            .padding(.horizontal,10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(gradient: Gradient(colors: colors), center: .center, angle: .degrees(0.0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
