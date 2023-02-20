//
//  MainView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/5/22.
//

import SwiftUI



struct MainView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    
    var sex = ["Male", "Female"]
    @State private var selectedSex = ""
    
    @State private var selectedWeight = 0
    @State private var selectedFoot = 0
    @State private var selectedInch = 0
    @State private var showsWeightPicker = false
    @State private var showsHeightPicker = false
    @State private var selectedAge = 20
    
    @State private var showingAlert = false
    
    @State var userInfo = UserInformation()
    @State var result = 0
    
    func insertInfo(){
        userInfo.firstName = firstName
        userInfo.lastName = lastName
        userInfo.age = selectedAge
        userInfo.weight = selectedWeight
        userInfo.height = ((selectedFoot * 12) + selectedInch)
        
        if(selectedSex == "Male"){
            userInfo.calculateMan()
            result = userInfo.result
            
            //print("man")
        }
        else{
            userInfo.calculateWoman()
            result = userInfo.result
            
            //print("Woman")
        }
    }
    
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                Image("FitNGo1x")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .background(Color(.systemGray6))
                    .frame(width: 150, height: 150)
                
                Form{
                    
                    Section(header: Text("General Information")){
                        
                        TextField("First Name", text: $firstName)
                        
                        TextField("Last Name", text: $lastName)
                        
                    }
                    
                    
                    Section(header: Text("Physical Information")){
                        
                        //Sex Part
                        
                        Picker("Sex", selection: $selectedSex) {
                            ForEach(sex, id: \.self) {
                                Text($0)
                            }
                        }
                        
                        // Age Part
                        
                        Stepper("Age \t \t \t \t \(selectedAge)", value: $selectedAge, in: 0...100)
                        
                        
                        
                        // Weight Part
                        
                        Text("Weight \t \t \t \t \t \t \(selectedWeight) lbs")
                            .onTapGesture {
                                showsWeightPicker.toggle()
                                insertInfo()
                            }
                        CollapsableWheelPicker("", showsPicker: $showsWeightPicker, selection: $selectedWeight) {
                            ForEach(0..<400) {
                                Text("\($0) lbs ")
                            }
                        }
                        
                        
                        //Height Part
                        
                        VStack(alignment: .leading){
                            Text("Height \t \t \t \t \t \t \t \(selectedFoot) \" \(selectedInch) ' ")
                                .onTapGesture {
                                    showsHeightPicker.toggle()
                                    insertInfo()
                                }
                            
                            HStack{
                                
                                Spacer()
                                CollapsableWheelPicker("",showsPicker: $showsHeightPicker, selection: $selectedFoot) {
                                    ForEach(0..<7) {
                                        Text("\($0) foot ")
                                    }
                                }
                                .frame(width: 100)
                                .clipped()
                                
                                
                                Spacer()
                                
                                CollapsableWheelPicker("", showsPicker: $showsHeightPicker,selection: $selectedInch) {
                                    ForEach(0..<12) {
                                        Text("\($0) inch ")
                                    }
                                }
                                .frame(width: 100)
                                .clipped()
                                
                                Spacer()
                            }
                        }
                    }
                    
                    Section{
                        NavigationLink("Calculate", destination: ScoreView(firstName: $firstName, lastName: $lastName, result: $result))
                        
                            .onTapGesture {
                                if(selectedSex == "" || firstName == "" || lastName == "" || selectedFoot == 0 || selectedWeight == 0){
                                    showingAlert.toggle()
                                }
                                else{
                                    insertInfo()
                                }
                                
                                
                            }
                    }
                }
            }.background(Color(.systemGray6))
            
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Missing Info"), message: Text("Control the boxes"), dismissButton: .default(Text("OK")))
        }
    }
}







struct CollapsableWheelPicker<Label, Item, Content>: View
where Content: View, Item: Hashable, Label: View
{
    @Binding var showsPicker: Bool
    var picker: Picker<Label, Item, Content>
    init<S: StringProtocol>(_ title: S,
                            showsPicker: Binding<Bool>,
                            selection: Binding<Item>,
                            @ViewBuilder content: ()->Content)
    where Label == Text
    {
        self._showsPicker = showsPicker
        self.picker = Picker(title, selection: selection, content: content)
    }
    var body: some View {
        Group {
            if showsPicker {
                VStack {
                    picker
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }
}







struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
