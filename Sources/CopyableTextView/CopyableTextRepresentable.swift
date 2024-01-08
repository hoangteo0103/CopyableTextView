//
// File.swift
// 
//
// Created by Harry on 05/01/2024
//

import UIKit
import SwiftUI

struct CopyAbleTextRepresentable: UIViewRepresentable {
  let textView = LinkTextView()
  var fontSize: CGFloat
  var weight: Font.Weight
  var color: UIColor
  var isCopyable: Bool
  var isDetectLink: Bool
  @Binding var text: String
  @Binding var height: CGFloat
  @Binding var attributedText: NSMutableAttributedString?
  func makeUIView(context: Context) -> LinkTextView {
    textView.autocorrectionType = .no
    textView.isEditable = false
    textView.isSelectable = true
    textView.backgroundColor = .clear
    textView.textContainerInset = .zero
    textView.textContainer.lineFragmentPadding = 0
    textView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    textView.setContentHuggingPriority(.defaultHigh, for: .vertical)
    if isDetectLink {
      textView.dataDetectorTypes = .link
    }
    textView.textColor = color
    textView.shouldAllowSelect = isCopyable
    return textView
  }
  func updateUIView(_ uiView: LinkTextView, context: Context) {
    if let attributedText = attributedText {
      uiView.attributedText = attributedText
    } else {
      uiView.text = text
    }
  }
  func makeCoordinator() -> Coordinator {
    Coordinator(text: $text, attributedText: $attributedText)
  }
  class Coordinator: NSObject, UITextViewDelegate {
    @Binding var text: String
    @Binding var attributedText: NSMutableAttributedString?
    init(text: Binding<String>, attributedText: Binding<NSMutableAttributedString?>) {
      self._text = text
      self._attributedText = attributedText
    }
  }
}

class LinkTextView: UITextView {
  var shouldAllowSelect = true
  override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
    if shouldAllowSelect {
      return super.point(inside: point, with: event)
    } else {
      guard let pos = closestPosition(to: point) else { return false }
      guard let range = tokenizer.rangeEnclosingPosition(pos, with: .character, inDirection: .layout(.left)) else { return false }
      let startIndex = offset(from: beginningOfDocument, to: range.start)
      return attributedText.attribute(.link, at: startIndex, effectiveRange: nil) != nil
    }
  }
}
