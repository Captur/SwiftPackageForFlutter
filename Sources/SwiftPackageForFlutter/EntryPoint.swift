//
//  EntryPoint.swift
//  
//
//  Created by Archid Vignesh on 29/08/2023.
//

import Foundation
import Sentry

public class EntryPoint {
    //A singleton object. This Captur class will live throughout the lifetime of the app
    public static let shared = EntryPoint()
        
    //Developers will not be able to initialise this SDK else where. Only one instance will live throughout the app
    private init() {
        initialiseSentry()
    }
    
    private func initialiseSentry() {
        SentrySDK.start { options in
            options.dsn = "https://76039fab67ae4367946e64ccf111af0f@o434252.ingest.sentry.io/4504893309386752"
            options.debug = false
            options.tracesSampleRate = 1.0
        }
    }
}
