//
//  LearnView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct LearnView: View {
    @State var segmentSelection = 1
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .black
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
        UISegmentedControl.appearance().tintColor = .red
    }
    
    var body: some View {
        
        VStack {
            
            Picker("Favorite Color", selection: $segmentSelection){
                Text("Workout").tag(1)
                Text("Nutrition").tag(2)
            }
            .padding()
            .pickerStyle(.segmented)
            .background(Color(.systemGray6))
            .foregroundColor(Color.red)
            
            
            if(segmentSelection == 1){
                WorkoutView()
            }
            else{
                NutritionView()
            }
            
            
            
        }.background(Color(.systemGray6))
        
        
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
