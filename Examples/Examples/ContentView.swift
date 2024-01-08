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
            Text("Copyable and Detectable Links")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: true, isDetectLink: true, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            Text("Copyable and undetectable Links")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: true, isDetectLink: false, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            Text("Uncopyable and Detectable Links")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
            CopyableTextView(fontSize: 23, weight: .black, color: .black, isCopyable: false, isDetectLink: true, text: .constant("HEllo https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode dsfsnds n https://developer.apple.com/documentation/xcode/creating-a-standalone-swift-package-with-xcode"), height: .constant(20), attributedText: .constant(nil))
            Text("Uncopyable and Undetectable Links")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
                .font(.system(size: 12))
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
