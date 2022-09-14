//
//  ContentView.swift
//  BMI calculator
//
//  Created by Shahad on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var hight = ""
    var body: some View {
        VStack {
            Image("weight")
            Text("ادخل الطول والوزن").font(.largeTitle)
            TextField("m", text: $hight).font(.largeTitle).padding()
            TextField("kg", text: $weight).font(.largeTitle).padding()
            Button(action:{
                
            } ){
                ZStack{
            
                    Image(systemName: "square.fill")
                        Color.orange.frame(width: 200, height: 60)
                    Text("احسب").font(.largeTitle)
                }
                
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
//func CALC(weight: String ) -> String {
 //   return
//    Text("good")
//}

