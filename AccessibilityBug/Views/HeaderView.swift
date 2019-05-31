import UIKit

final class HeaderView: UIView, ViewCode {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityTraits = .header
        label.textColor = .white
        return label
    }()
    
    private let detailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isAccessibilityElement = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    var title: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    
    var image: UIImage? {
        get { return detailImageView.image }
        set { detailImageView.image = newValue }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        addSubview(titleLabel)
        addSubview(detailImageView)
    }
    
    func setupAutolayout() {
        
        titleLabel.leftAnchor
            .constraint(equalTo: leftAnchor,
                        constant: 10).isActive = true
        titleLabel.centerYAnchor
            .constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.trailingAnchor
            .constraint(lessThanOrEqualTo: detailImageView.leadingAnchor,
                        constant: 10).isActive = true
        
        detailImageView.trailingAnchor
            .constraint(equalTo: trailingAnchor,
                        constant: -10).isActive = true
        detailImageView.centerYAnchor
            .constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        detailImageView.heightAnchor
            .constraint(equalTo: heightAnchor,
                        multiplier: 0.7).isActive = true
        detailImageView.widthAnchor
            .constraint(equalTo: detailImageView.heightAnchor).isActive = true
    }
    
    func additionalSetups() {
        backgroundColor = .blue
        isAccessibilityElement = false
        accessibilityElements = [titleLabel]
    }
}
