//
//  PersistentStorage.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 28/07/22.
//

import Foundation
import CoreData

final class PersistentStorage {
    private init() {}
    static let shared = PersistentStorage()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreData4")
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                fatalError("\(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var context = persistentContainer.viewContext
    
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("\(nserror), \(nserror.userInfo)")
            }
        }
    }
}
