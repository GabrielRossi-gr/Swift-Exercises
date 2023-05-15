import SwiftUI

struct HomeView: View {
    
    
    func falaAe() {
        print("wjekgflwkjeg")
    }
    

    @State var iconColor: Color = .blue
    
    var body: some View {
        
        VStack{
            Text("open session")
                .foregroundColor(.red)
                .font(.largeTitle)
                .bold()
            
            Image(systemName: "circle")
                .foregroundColor(iconColor)
                .font(.system(size: 120))
            Image("imagem1")
                .resizable()
                .frame(width: 300 , height: 300)
         
        
            
            Button{
                //o que ele faz
                print("o botao foi clicado")
                falaAe()
//                if(iconColor == iconColor.green){
//                    iconColor = .blue
//                }
                iconColor = .green
                
            }label: {
                //estilo
                Text("botao2")
                    .foregroundColor(.blue)
            }
            
            
            NavigationLink{
                DetailView()
            }label: {
                Text("navigation link")
            }
            
            ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
            
            Rectangle()
            
            
            
        }
    }
}
