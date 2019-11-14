//
//  ContentView.swift
//  Admob-SwiftUI
//
//  Created by Mert Ala on 13.11.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    @State var rewarded : GADRewardBasedVideoAd!
    
    var body: some View {
     
        Button(action: {
            
            if self.rewarded.isReady {
            
            let root = UIApplication.shared.windows.first?.rootViewController
                self.rewarded.present(fromRootViewController: root!)
            }
        }) {
            Text("show")
        }.onAppear {
            
            self.rewarded = GADRewardBasedVideoAd()
            let req =  GADRequest()
            self.rewarded.load(req, withAdUnitID: "ca-app-pub-3940256099942544/1712485313")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

