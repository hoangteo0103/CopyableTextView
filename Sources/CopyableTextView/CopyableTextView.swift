import SwiftUI

@available(iOS 13.0, *)
public struct CopyableTextView: View {
    var fontSize: CGFloat
    var weight: Font.Weight
    var color: UIColor
    var isCopyable: Bool
    var isDetectLink: Bool
    @Binding var text: String
    @Binding var height: CGFloat
    @Binding var attributedText: NSMutableAttributedString?
    
    public init(fontSize: CGFloat, weight: Font.Weight, color: UIColor, isCopyable: Bool, isDetectLink: Bool, text: Binding<String>, height: Binding<CGFloat>, attributedText: Binding<NSMutableAttributedString?>) {
        self.fontSize = fontSize
        self.weight = weight
        self.color = color
        self.isCopyable = isCopyable
        self.isDetectLink = isDetectLink
        self._text = text
        self._height = height
        self._attributedText = attributedText
    }
    
    public var body: some View {
        return CopyAbleTextRepresentable(
            fontSize: fontSize,
            weight: weight,
            color: color,
            isCopyable: isCopyable,
            isDetectLink: isDetectLink,
            text: $text,
            height: $height,
            attributedText: $attributedText
        )
    }
}
