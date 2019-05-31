import UIKit

final class ContentCell: UITableViewCell, ViewCode {
    static let reuseIdentifier = "ContentCell"
    
    private let header: HeaderView = {
        let header = HeaderView(frame: .zero)
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    private let theContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with model: ContentViewModel) {
        header.title = model.title
        header.image = model.image
        theContentView.backgroundColor = model.color
        theContentView.isAccessibilityElement = true
        theContentView.accessibilityLabel = model.accessibilityLabel
    }
    
    func setupViewHierarchy() {
        contentView.addSubview(header)
        contentView.addSubview(theContentView)
    }
    
    func setupAutolayout() {
        
        header.leadingAnchor
            .constraint(equalTo: contentView.leadingAnchor).isActive = true
        header.trailingAnchor
            .constraint(equalTo: contentView.trailingAnchor).isActive = true
        header.topAnchor
            .constraint(equalTo: contentView.topAnchor).isActive = true
        header.heightAnchor
            .constraint(equalToConstant: 50).isActive = true
        
        theContentView.topAnchor
            .constraint(equalTo: header.bottomAnchor).isActive = true
        theContentView.leadingAnchor
            .constraint(equalTo: header.leadingAnchor).isActive = true
        theContentView.trailingAnchor
            .constraint(equalTo: header.trailingAnchor).isActive = true
        theContentView.bottomAnchor
            .constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    func additionalSetups() {
        isAccessibilityElement = false
        accessibilityElements = [header, theContentView]
    }
}
