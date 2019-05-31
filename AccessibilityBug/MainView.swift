import UIKit

final class MainView: UIView, ViewCode {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.allowsSelection = false
        return tableView
    }()
    
    var tableViewDataSource: UITableViewDataSource? {
        get { return tableView.dataSource }
        set { tableView.dataSource = newValue }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func registerCells() {
        tableView.register(ContentCell.self, forCellReuseIdentifier: ContentCell.reuseIdentifier)
    }
    
    private func registerDelegates() {
        tableView.delegate = self
    }
    
    func setupViewHierarchy() {
        addSubview(tableView)
    }
    
    func setupAutolayout() {
        tableView.topAnchor
            .constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor
            .constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor
            .constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor
            .constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    func additionalSetups() {
        backgroundColor = .white
        registerCells()
        registerDelegates()
    }
}

extension MainView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0 * CGFloat(indexPath.row + 1)
    }
}
