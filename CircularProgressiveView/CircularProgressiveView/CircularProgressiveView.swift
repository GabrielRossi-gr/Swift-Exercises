//
//  CircularProgressiveView.swift
//  CircularProgressiveView
//
//  Created by Gabriel Rossi on 08/09/23.
//

import SwiftUI


struct CircularProgressiveView: View {
    
    
    var progressNumber : Float //progress number
    var title : String //"Title"
    var subTitle : String //"Subtitle"
    
    
    init(progressNumber: Float, title: String, subTitle: String) {
        self.progressNumber = progressNumber
        self.title = title
        self.subTitle = subTitle
    }
    
    init(progressNumber: Float, title: String) {
        self.progressNumber = progressNumber
        self.title = title
        self.subTitle = ""
    }
    
    
    
    //circle config
    @State var progressCircleColor = Color(.systemBlue)
    @State var secondProgressCircleColor = Color(.white)
    @State var opacity = 0.8
    
    
    //size circle
    @State var secondCircleLineWidth =  25.0    //25.0
    @State var circleLineWidth = 25.0           //15.0
    
    
    //text config
    @State var titleSize = 70.0
    @State var subtitleSize = 40.0
    @State var titleColor = Color(.systemBlue)
    @State var subtitleColor = Color(.black)
    
    public func defCircleCollor(color: Color){
        self.progressCircleColor = color
    }
    
    var body: some View {
                
        ZStack{
            
            //background circle
            Circle()
                .foregroundColor(.clear)
            

            
            //second progress circle
            Circle()
                .stroke(lineWidth: secondCircleLineWidth)
                .foregroundColor(secondProgressCircleColor)
                .opacity(opacity)
            
                
            
            //progress circle
            Circle()
                .trim(from: 0.0, to: CGFloat(progressNumber))
                .stroke(style: StrokeStyle(lineWidth: circleLineWidth, lineCap: .round))
                .foregroundColor(progressCircleColor)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1.0), value: 1)
                
            
            
            //center texts
            VStack{
                Text(title)
                    .font(.system(size: titleSize))
                    .bold()
                    .foregroundColor(titleColor)
//                    .frame(width: 300)
                Text(subTitle)
                    .font(.system(size: subtitleSize))
                    .foregroundColor(subtitleColor)
//                    .frame(width: 300)
            }
        }
        
    }
}

////stroke
//Circle()
//    .stroke(lineWidth: secondCircleLineWidth + 3.0)
//    .foregroundColor(.black)

#Preview {
    CircularProgressiveView(progressNumber: 0.5, title: "title", subTitle: "subtitle")
}
    

