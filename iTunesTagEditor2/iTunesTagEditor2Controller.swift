//
//  iTunesTagEditor2Controller.swift
//  iTunesTagEditor2
//
//  Created by Atsushi Yasuda on 2014/08/03.
//  Copyright (c) 2014年 ay65535. All rights reserved.
//

import Cocoa

class iTunesTagEditor2Controller: NSObject {
    
    var itunestageditor: iTunesTagEditor2
    
    init() {
        super.init()
#if DEBUG
            plintln("iTunesTagEditor2Controller")
#endif
        itunestageditor2 = iTunesTagEditor2()
    }
    
    func onBtnOKClicked() {
        
    }
}
