import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top){
            Image("blackgradient")
                .resizable()
                .frame(height: UIScreen.main.bounds.height/4)
                .ignoresSafeArea()
            VStack{
                Image("wok")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .overlay(Circle().stroke(Color.white,lineWidth:4))
                    .padding(.all)
                    .frame(width: 250, height: 250)
                Text("Ching Wei Lun")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .font(.title)
                Text("Egg Fried Rice must have wok QI.")
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .frame(width: 400, height:100)
                Spacer()
                HStack{
                    Image("ig")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("facebook")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Image("tiktok")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
