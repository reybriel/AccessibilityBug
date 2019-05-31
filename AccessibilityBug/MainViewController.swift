import UIKit

class MainViewController: UIViewController {
    
    private var mainView = MainView(frame: UIScreen.main.bounds)
    private let content = ContentViewModel.all
    
    override func loadView() {
        view = mainView
        mainView.tableViewDataSource = self
    }
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentCell.reuseIdentifier,
                                                 for: indexPath) as? ContentCell else {
                                                    return UITableViewCell()
        }
        cell.setup(with: content[indexPath.row])
        return cell
    }
}
