//
//  ContentView.swift
//  Die Roller
//
//  Created by Ennis Cruz on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    @State var dice_image:String = "dice-general"
    @State var dice_result: String = "Waiting.."
    var body: some View {
        
        Form{
            VStack {
                Text("Simple Die Roller App")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                
                    .padding(.bottom, 25)
                
                Image(self.dice_image)
                    .resizable().frame(width: 300, height: 300)
                
                Text(self.dice_result)
                    .font(.title)
                    .padding().padding(.bottom, 25)
                
                Button(action: {
                    
                    let randomNumber = arc4random_uniform(6) + 1
                    self.dice_result = String(randomNumber)
                    
                    switch randomNumber {
                    case 1:
                        self.dice_image = "dice-1"
                    case 2:
                        self.dice_image = "dice-2"
                    case 3:
                        self.dice_image = "dice-3"
                    case 4:
                        self.dice_image = "dice-4"
                    case 5:
                        self.dice_image = "dice-5"
                    case 6:
                        self.dice_image = "dice-6"
                    default:
                        return
                    }
                    
                }) {
                    Text("Roll!")
                        .font(.title)
                }
            }
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    
}
       

