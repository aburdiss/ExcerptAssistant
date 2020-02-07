//
//  Citations.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/31/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

let cloutierBeethoven = "Cloutier, Daniel R., \"Ludwig van Beethoven's orchestration of the trombone\" (2009). Graduate Theses, Dissertations, and Problem Reports. 2917."
let yeoBach = "Yeo, Doug. \"Cello Suite 5, BWV 1011: Sarabande.\" Orchestral Audition Repertoire, Doug Yeo, Sept. 2013, www.yeodoug.com/resources/text/audrep.html."
let sauerBeethoven5 = "Ralph Sauer - Topic. \"Symphony No. 5\". Online video clip. YouTube. YouTube, 10 Feb. 2015. Web. 30 Jan. 2020."
let sauerBerlioz = "Ralph Sauer - Topic. \"Hungarian March / Symphonie Fantastique\". Online video clip. YouTube. Youtube, 10 Feb. 2015. Web. 30 Jan. 2020."
let sauerBrahms = "Ralph Sauer - Topic. \"Symphonies No. 1 & 2\". Online video clip. YouTube. YouTube, 10 Feb. 2015. Web. 2 Feb. 2020."

class CitationsModel: ObservableObject {
    var citations: [String] = [
        cloutierBeethoven, sauerBeethoven5, sauerBerlioz, sauerBrahms, yeoBach
    ]
}
