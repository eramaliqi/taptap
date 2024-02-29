//
//  DataController.swift
//  taptap
//
//  Created by Dorina on 29.2.24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "RecipeModel")
    
    init(){
        container.loadPersistentStores{
            desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext){
        do{
            try context.save()
            print("Data saved!!")
        }catch {
            print("We could not save the data...")
        }
    }
    
    func addRecipe(            name: String,
                               desc: String,
                               ingridients: String,
                               directions: String,
                               category: String,
                               context: NSManagedObjectContext
    ){
        
        let recipe = Recipes(context: context)
        recipe.id = UUID()
        let dateformat = DateFormatter()
        dateformat.dateFormat = "yyyy-mm-dd"
        let now = Date()
        let created = dateformat.string(from: now)
        recipe.created_at = created
        recipe.name = name
        recipe.ingridients = ingridients
        recipe.directions = directions
        recipe.category = category
        recipe.desc = desc
        
        save(context: context)
    }
    
}
