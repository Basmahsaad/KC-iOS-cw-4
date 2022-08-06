//
//  ContentView.swift
//  PROCW44
//
//  Created by basmah saad on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var finalGrade = ""
    @State var gradedes = ""
    var body: some View {
        
        
        VStack {
            Text("حاسبة الدرجات ")
                .font(.largeTitle)
                .foregroundColor(.gray)
                Spacer()
            Image("calculator")
                .resizable()
                .frame(width: 190, height: 175)
                .padding(30)
            
            TextField("enter you grade",
                      text:$finalGrade)
            .background(.white)
            .textFieldStyle(.roundedBorder)
            Text("احسب درجتك")
                .frame(width: 200 , height: 40)
                .background(.yellow)
                
                .onTapGesture {
                    if (Double(finalGrade) ?? 0) >= 90 { gradedes = "امتياز"
                    }
                    
            else if (Double(finalGrade) ?? 0)
                        >= 80  { gradedes = "جيد جداً"}
                
                    else if (Double(finalGrade) ?? 0)
                                >= 70 { gradedes = "جيد"   }
                    
                    else if (Double(finalGrade) ?? 0)
                                >= 60 { gradedes = "مقبول" }
                    
                    else{
            gradedes = "راسب"
                    }
                    
                    
                }
                .padding(40)
               Text("لقد حصلت على درجة")
            
                Spacer()
            
            Text(gradedes)
                .font(.largeTitle)
            
            
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
