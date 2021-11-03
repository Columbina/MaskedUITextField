import UIKit
@_exported import MaskedFormatter

open class MaskedUITextField: UITextField {

    public var formatter: MaskedFormatter?

    public init(formatter: MaskedFormatter) {
        self.formatter = formatter
        super.init(frame: CGRect.zero)
        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        self.addTarget(self,
                       action: #selector(textFieldDidChange(_:)),
                       for: .editingChanged)
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let formatter = formatter else {
            return
        }
        
        textField.text = formatter.string(for: text)
    }
}
