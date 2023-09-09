//
//  CircularProgressiveView.swift
//  CircularProgressiveView
//
//  Created by Gabriel Rossi on 08/09/23.
//

import SwiftUI


struct CircularProgressiveView: View {
    

    @Binding var progressNumber : Float //progress number
    @Binding var title : String //"Title"
    @Binding var subTitle : String //"Subtitle"
    
    
    //circle config
    @State var progressCircleColor = Color(.systemBlue)
    @State var secondProgressCircleColor = Color(.darkGray)
    @State var backgroundCircleColor = Color(.brown)
    @State var opacity = 0.2
    
    
    //size circle
    @State var secondCircleLineWidth =  25.0    //25.0
    @State var circleLineWidth = 25.0           //15.0
    
    
    //text config
    @State var titleSize = 70.0
    @State var subtitleSize = 40.0
    @State var titleColor = Color(.systemBlue)
    @State var subtitleColor = Color(.black)
    
    
    
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

struct CircularProgressiveView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressiveView(progressNumber: .constant(Float(0.5)), title: .constant("Title"), subTitle: .constant("Subtitle"))
    }
}
