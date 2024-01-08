//
// ContentView.swift
// Examples
//
// Created by Harry on 05/01/2024
//
                                                        
import SwiftUI
import CopyableTextView

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: true, isDetectLink: true, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: true, isDetectLink: false, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: false, isDetectLink: true, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: false, isDetectLink: false, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            
                Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
