//
//  ContentView.swift
//  cw5.1
//
//  Created by Batool Hussain on 02/07/2022.
//

import SwiftUI


struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var bmi = 0.0
    @State var status = ""
    var body: some View {
        VStack{
            Text("ادخل الطول و الوزن")
                .padding()
            
            TextField("الطول بالمتر", text: $height)
                .frame(width: 250, height: 70)
                .background(.white)
                .shadow(color: .black, radius: 10)
            TextField("الوزن بالكيلو", text: $weight)
                .frame(width: 250, height: 70, alignment: .center)
                .background(.white)
                .shadow(color: .black, radius: 10)
            
            Button(action: {
                bmi = calculateBmi(height: Double(height)! , weight: Double(weight)!)
                status = checkStatus(bmi: bmi)
            }, label: {
                Text("احسب")
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 60, alignment: .center)
                     .background (.black)})
            
            
            Text("bmi = \(bmi) \n الحالة = \(status)")
                .multilineTextAlignment(.center)
                .font(.title)
                .frame(width: 250, height: 70, alignment: .center)
            
            
            
            
            
        }
    }
    //     Funcs
    
    func calculateBmi(height : Double, weight: Double ) -> Double {
        return  weight/(height*height)
    }
    
    func checkStatus(bmi: Double) -> String{
        if bmi <= 20{
            return "ضعيف"
        }else if bmi <= 25 {
            return "جيد"
        }else {
            return "سمين"
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
