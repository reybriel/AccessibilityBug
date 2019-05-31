protocol ViewCode {
    func setupViewHierarchy()
    func setupAutolayout()
    func additionalSetups()
}

extension ViewCode {
    func additionalSetups() {}
    func setupView() {
        setupViewHierarchy()
        setupAutolayout()
        additionalSetups()
    }
}
