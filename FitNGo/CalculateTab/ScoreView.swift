//
//  ScoreView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/4/22.
//

import SwiftUI

struct ScoreView: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var result: Int
    @State var value = 0
    @State private var ocupationResult = 0
    @State private var goalResult = 0
    
    @State var selectedOccupation = ""
    var occupation = ["Not Working", "Table Work or Student", "Paced Work or Regular Workout", "Heavy Work"]
    
    @State var selectedGoal = ""
    var goal = ["Loose Weight", "Keep Current Weight","Gain Weight"]
    
    var body: some View {
        
        NavigationView{
            VStack{
                Section{
                    Text("\(result) kcal")
                        .font(.system(size: 30))
                    
                    
                    Text("Hello \(firstName) \(lastName)! Select your occupation and goal to see daily calories you need to take!")
                        .padding()
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Form{
                    
                    Section(header: Text("Further Information")){
                        
                        Picker("Occupation", selection: $selectedOccupation) {
                            ForEach(occupation, id: \.self) {
                                Text($0)
                            }
                        }
                        
                        
                        Picker("Goal", selection: $selectedGoal) {
                            ForEach(goal, id: \.self) {
                                Text($0)
                            }
                        }
                        
                    }
                }
                
                
                Section{
                    VStack{
                        Button("See the result"){
                            withAnimation(Animation.easeInOut(duration: 4)){
                                value = 0
                                
                                switch selectedOccupation{
                                case "Not working":
                                    ocupationResult += 300
                                case "Table Work or Student":
                                    ocupationResult += 500
                                case "Paced Work or Regular Workout":
                                    ocupationResult += 700
                                case "Heavy Work":
                                    ocupationResult += 900
                                default:
                                    ocupationResult = ocupationResult
                                }
                                
                                switch selectedGoal{
                                case "Loose Weight":
                                    goalResult -= 500
                                case "Keep Current Weight":
                                    goalResult += 0
                                case "Gain Weight":
                                    goalResult += 500
                                default:
                                    goalResult = goalResult
                                }
                                
                                value += ocupationResult
                                ocupationResult = 0
                                
                                value += goalResult
                                goalResult = 0
                                
                                value += result
                            }
                        }
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(Capsule())
                        .foregroundColor(Color.blue)
                        
                        Circle()
                            .fill(Color(.systemGray5))
                            .frame(width: 170, height: 170)
                            .modifier(numberAnimation(number: CGFloat(value)))
                        
                        Spacer()
                    }
                }
                
                
                
            }.navigationTitle("Basal Metabolic Rate")
                .background(Color(.systemGray6))
            
        }
    }
}

struct numberAnimation: AnimatableModifier{
    
    var number: CGFloat
    var animatableData: CGFloat{
        get{
            number
        }
        
        set{
            number = newValue
        }
    }
    
    func body(content: Content) -> some View {
        return content.overlay(Text("\(Int(number)) kcal").font(.largeTitle))
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(firstName: .constant("User"),
                  lastName: .constant("User"),
                  result: .constant(0))
    }
}
