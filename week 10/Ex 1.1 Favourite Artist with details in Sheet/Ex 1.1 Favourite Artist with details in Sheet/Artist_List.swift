//
//  Artist_List.swift
//  Ex 1.1 Favourite Artist with details in Sheet
//
//  Created by labuser on 15/01/2025.
//

import Foundation

struct Artist: Identifiable{
    var id = UUID() //Unique identifier
    var photo: String = ""
    var name: String = ""
    var desc: String = ""
    var link: String = ""
    var color: String = ""
}

let artist = [Artist(photo:"milet", name: "Milet", desc: "JP Anime Singer", link: "https://www.milet.jp/", color: "gray"),
                  Artist(photo:"zarame", name: "Zarame", desc: "JP Singer", link: "https://jpop.fandom.com/wiki/Zarame", color: "blue"),
                  Artist(photo:"joji", name: "Joji", desc: "JP Rapper", link: "https://www.youtube.com/channel/UCFl7yKfcRcFmIUbKeCA-SJQ", color: "red"),
                  Artist(photo:"satomi", name: "Satomi", desc: "JP Actor", link: "https://en.wikipedia.org/wiki/Satomi_Ishihara", color: "lightblue")]
    
