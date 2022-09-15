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
    @State  var result = 0.0
    @State var Status = ""
    //@State var res: Double = 0.0
    //@State var resu =  ( (Double(weight) ?? 0.0) /
    //( (Double(hight) ?? 0.0 ) * (Double(hight) ?? 0.0) )
   
    var body: some View {
        VStack {
            Image("weight")
            Text("ادخل الطول والوزن").font(.largeTitle)
            TextField("m", text: $hight).font(.largeTitle).padding()
            TextField("kg", text: $weight).font(.largeTitle).padding()
            
           // let  result = ( (Double(weight) ?? 0.0) / ( (Double(hight) ?? 0.0 ) * (Double(hight) ?? 0.0) ) )
                                     
            Button(action:{
                CALC(weight: Double(weight) ?? 0.0, hight: Double(hight) ?? 0.0 )
                } ){
                ZStack{
                    Text("احسب").font(.largeTitle).foregroundColor(.white)
                        .frame(width: 200, height: 60).background(.black).cornerRadius(10)
                      }
                
                }
                .padding()
            Text("BMI = \(result) ")
            Text("الحالة \(Status)")
                }
        

            }

    func CALC(weight: Double, hight: Double) {

         result = ( Double(weight)  / ( Double(hight) * Double(hight) ) )

          
    if result <= 20.0 {
        Status = "ضعيف"
                        
            } else if result <= 25.0 {
                Status = "جيد"
            } else {
                Status = "سمين"
                    }
                    
                    
    }

    }
                                    
struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
    }
}
    
                                     

                                     
