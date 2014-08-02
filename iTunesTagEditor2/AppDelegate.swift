//
//  AppDelegate.swift
//  iTunesTagEditor2
//
//  Created by Atsushi Yasuda on 2014/08/02.
//  Copyright (c) 2014年 ay65535. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet var window: NSWindow
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        var error: NSError?
        var library = ITLibrary.libraryWithAPIVersion("1.0", error: &error)
        if library {
            var playlists: Array = library.allPlaylists //  <- NSArray of ITLibPlaylist
            var tracks: Array = library.allMediaItems //  <- NSArray of ITLibMediaItem
            for playlist in playlists {
                println("playlist.name: \(playlist.name)")
            }
            println("プレイリスト数: \(playlists.count)")
        }
    }
    
    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
}
