//
//  RecipesTableViewController.swift
//  RecipesList
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import UIKit

class RecipesTableViewController: UITableViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    let presentor = RecipesPresenter.init(service: RecipeService())
    var recipesToDisplay: [RecipeViewData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentor.attachView(self)
        presentor.getRecipes()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesToDisplay.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubtitleCell", for: indexPath)
        
        let recipeData = recipesToDisplay[indexPath.row]
        cell.textLabel?.text = recipeData.title
        cell.detailTextLabel?.text = recipeData.description

        return cell
    }
}

extension RecipesTableViewController: RecipeViewLogic {
    func startLoading() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func stopLoading() {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }
    
    func setRecipes(data: [RecipeViewData]) {
        recipesToDisplay = data
        tableView.reloadData()
    }
    
    func clearRecipes() {
        recipesToDisplay.removeAll()
        tableView.reloadData()
    }
}
