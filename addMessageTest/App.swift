//
//  App.swift
//  addMessageTest
//
//  Created by Gareth Miller on 27/03/2018.
//  Copyright © 2018 Gareth Miller. All rights reserved.
//

import UIKit

class App {
    
    var name: String
    
    //MARK: Initialisation
    
    init?(name: String) {

    
    // Initialisation should fail if there is no name
    if name.isEmpty {
        return nil
    }
    
    //Initialise stored properties
    self.name = name
    
}
}
