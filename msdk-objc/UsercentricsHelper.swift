//
//  UsercentricsHelper.swift
//  msdk-objc
//
//  Created by Aliaksandra Piotukh on 02.08.24.
//

import Foundation
import Usercentrics
import UsercentricsUI

@objc class UsercentricsHelper: NSObject {
    
    @objc func displayBanner() {
        UsercentricsCore.isReady { status in
        
            if status.shouldCollectConsent {
                print("status: should collect consent")
                
                self.banner()
                
            } else {
                print("status: should NOT collect consent")
            }
        } onFailure: { error in
            // Handle non-localized error
        }
    
    }
    
    
    func banner(){
        let banner = UsercentricsBanner()
        banner.showFirstLayer() { userResponse in
            // Handle userResponse
        }
    }

}
