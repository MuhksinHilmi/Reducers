//
//  QuestionTableViewController.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 02/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

class QuestionTableViewController: UITableViewController {
    var tableDataSource: TableDataSource<UITableViewCell, Question>?
    var loadingIndicator: UIActivityIndicatorView = {
       let loading: UIActivityIndicatorView = UIActivityIndicatorView()
        loading.hidesWhenStopped = true
        loading.activityIndicatorViewStyle = .gray
        loading.translatesAutoresizingMaskIntoConstraints = false
        return loading
    }()
    let cellIdentifier:String = "questionCell"
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self){
            $0.select {
                $0.questionState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        store.dispatch(fetchQuestion)
    }
    override func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.separatorStyle = .none
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension QuestionTableViewController: StoreSubscriber {
    func newState(state: QuestionState) {
        tableDataSource?.models = state.model
        
        state.showLoading ? loadingIndicator.startAnimating() : loadingIndicator.stopAnimating()
        tableDataSource = TableDataSource(cellIdentifier:cellIdentifier, models: state.model) {cell, model in
            cell.textLabel?.text = model.question
            cell.textLabel?.textAlignment = .center
            return cell
        }
        
        tableView.dataSource = tableDataSource
        tableView.reloadData()
    }
}
