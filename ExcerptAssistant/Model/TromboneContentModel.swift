//
//  TromboneContentModel.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

// TODO: Implement this correctly as an observable object.
// TODO: Document this file!
// TODO: Start storing sources in a separate model

import Foundation

struct Composition: Identifiable {
    let id: Int
    var composer: Composer
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var mutes: String
    var commonDifficulties: String
    var professionalAdvice: String
    var videos: [[String]] // Name, Link
}

struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var avgTempo: String
    var measures: String
    var pictures: [[String]] // Part, PictureNo.
}

struct Composer: Identifiable {
    let id: Int
    var name: String
    var shortName: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
}

struct Era: Identifiable {
    let id: Int
    var name: String
    var dates: String
    var description: String
    var popularComposers: String
}

// Composers
let bach = Composer(id: 0, name: "Johann Sebastian Bach", shortName: "Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.")

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", shortName: "Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2001, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.")

let berlioz = Composer(id: 2, name: "Hector Berlioz", shortName: "Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.")

let bizet = Composer(id: 3, name: "Georges Bizet", shortName: "Bizet", ipa: "zhawrzh biˈzeɪ", image: 2003, country: "France", dates: "1838-1875", bio: "Georges Bizet was a prominant French composer of the Romantic Era. Best known for his operas and incidental music, Bizet had little success until his final work \"Carmen\".")

let borodin = Composer(id: 4, name: "Alexander Borodin", shortName: "Borodin", ipa: "ɐlʲɪkˈsandr bərɐˈdʲin", image: 2004, country: "Russia", dates: "1833-1887", bio: "Alexander Borodin was a Russian Chemist and Romantic composer, who was one of the major composers who advocated for Russian nationalist music. Borodin is best known for his symphonies, and his only opera \"Prince Igor\". He also made major contributions to the field of organic chemistry, and was a major proponent of education, founding a school of medicine for women in St. Petersburg.")

let brahms = Composer(id: 5, name: "Johannes Brahms", shortName: "Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2005, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.")

let bruckner = Composer(id: 6, name: "Anton Bruckner", shortName: "Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2006, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.")

let dvorak = Composer(id: 7, name: "Antonín Dvořák", shortName: "Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2007, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.")


// Excerpts
let bachCelloSuite = Composition(id: 0, composer: bach, name: "Cello Suite No. 5", date: "ca. 1720", era: "Baroque", genre: "Cello Suite", excerpts: [
    Excerpt(id: 0, description: "Sarabande", avgTempo: "72bpm", measures: "1-20 (All)", pictures: [["", "1000"]])
], mutes: "No", commonDifficulties: "smooth leaps, breathing", professionalAdvice: "\"As to tempo, we are left to find a comfortable tempo that communicates the gravity of the music without becoming glacial and static. Many trombonists play the Sarabande as if it was in six rather than three – such weighting of each note results in a dull, ponderous performance that is impossible to sustain musically. A tempo of quarter note = 50 is typical of that taken by many of the world’s great cello players and allows us to maintain forward motion without hurrying.\n\nKeep in mind that every measure contains a five note theme; the sixth note in several bars serves simply as a reinforcement of the cadence, a melodic movement to the key of the downbeat of the next bar, or resolution of a fifth note passing tone.\n\nBars 16-19 require a decision by the performer: whether or not to phrase over the bar lines. Many players (including myself in my 2001 version of this movement that was first posted on my website) have phrased over the bar line, making the sixth note a pickup to the next bar. But over time, I have become persuaded – as the earliest manuscripts of the Suites support – that playing all six notes in those bars as a phrase rather than giving each bar a five note theme with a pickup to the next bar makes the most cogent musical sense.\" -Douglas Yeo", videos: [["Christian Jones", "jO9BGyQveRY"], ["Pablo Casals", "XEN-Xhx8aDA"]])

let beethoven5 = Composition(id: 1, composer: beethoven, name: "Symphony No. 5", date: "1808", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 1, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV mm. 374 - 479", pictures: [["Trombone 1", "1001"], ["Trombone 2", "1002"], ["Trombone 3", "1003"]]),
    Excerpt(id: 2, description: "Excerpt 2", avgTempo: "", measures: "Mov. IV mm. 580 - 675", pictures: [["Trombone 1", "1004"], ["Trombone 2", "1005"], ["Trombone 3", "1006"]]),
    Excerpt(id: 3, description: "Excerpt 2 (continued)", avgTempo: "", measures: "Mov. IV mm. 767 - End", pictures: [["Trombone 1", "1007"], ["Trombone 2", "1008"], ["Trombone 3", "1009"]])
], mutes: "No", commonDifficulties: "Range, Potential Alto Trombone", professionalAdvice: "\"Beethoven also wrote for the alto trombone and it should be used whenever possible, especially in the fifth symphony. The alto certainly makes the high range easier, but more importantly, we can achieve the right sound and blend. Strive for a projected brilliant tone. Don't be afraid to see how loud your alto can play in the proper places. Of course, this is the first known use of trombones in a symphony so I'm sure that the composer wanted them to be heard. If you must use the tenor, again consider using a smaller bore and a smaller mouthpiece to achieve brilliance without excessive volume.\" -Ralph Sauer", videos: [["Bernard Haitink, London Symphony Orchestra", "DAyUzxDB9eE"], ["Leonard Bernstein, Wiener Philharmoniker", "kHYBoG7hiZk"]])

let beethoven9 = Composition(id: 2, composer: beethoven, name: "Symphony No. 9", date: "1824", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 4, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV mm. 595 - 626", pictures: [["Trombone 1", "1010"], ["Trombone 2", "1011"], ["Trombone 3", "1012"]])
], mutes: "No", commonDifficulties: "Range, Potential Alto Trombone", professionalAdvice: "\"The trombone section in this work has very clearly delineated roles, based on the particular context and dynamic. For example, the trombones have a purely accompanying role in the Scherzo, and in that movement, the span of the parts tends to be wider, hovering around tenths, twelfths, and even as wide as two octaves. In the ending of the Finale, the trombones have more of a tutti supporting role, and the intervals tend to be closer, including sixths, fifths, and even unisons. The chords are all in close position, with the final chords in a tight root position triad, which, as was discussed earlier, has excellent projection qualities.\" -Daniel R. Cloutier", videos: [["Daniel Barenboim, West-Eastern Divan Orchestra", "ChygZLpJDNE?t=903"], ["Riccardo Muti, Chicago Symphony Orchestra", "rOjHhS5MtvA?t=4066"], ["Southeast Trombone Symposium", "Sd6es2t0eU4"]])

let beethovenFidelio = Composition(id: 3, composer: beethoven, name: "Fidelio", date: "1805", era: "Classical", genre: "Opera", excerpts: [
    Excerpt(id: 5, description: "Overture", avgTempo: "", measures: "All", pictures: [["Trombone 1", "1013"], ["Trombone 2", "1014"]])
], mutes: "No", commonDifficulties: "Range, Potential Alto Trombone", professionalAdvice: "\"In Fidelio, the trombones never double the chorus and rarely act independently, with the exception of the dungeon scene. The trombones almost exclusively are simply two more voices in large tutti sections, especially when diminished chords are involved.\" -Daniel R. Coutier", videos: [["James Levine, Metropolitan Opera Orchestra", "NA3bi_evCZk"], ["Herbert Von Karajan, Berliner Philharmoniker", "1FB7z2ki2MQ"]])

let berliozFaust = Composition(id: 4, composer: berlioz, name: "Damnation of Faust", date: "1846", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", avgTempo: "96 bpm", measures: "Hungarian March, 11 mm. before [2] to 2 mm. after [2]", pictures: [["Trombone 1", "1015"], ["Trombone 2", "1016"], ["Trombone 3", "1017"]]),
    Excerpt(id: 7, description: "Excerpt 2", avgTempo: "96 bpm", measures: "Hungarian March, 6 mm. Before [4] to 2 mm. After [5]", pictures: [["Trombone 1", "1018"], ["Trombone 2", "1019"], ["Trombone 3", "1020"]]),
    Excerpt(id: 8, description: "Excerpt 3", avgTempo: "96 bpm", measures: "10 mm. before [6] to End", pictures: [["Trombone 1", "1021"], ["Trombone 2", "1022"], ["Trombone 3", "1023"]])
], mutes: "", commonDifficulties: "Musical Style, Tempo, Intonation", professionalAdvice: "\"In the Berlioz Hungarian March, rhythm is extremely important: keep it steady. Play this excerpt a little bit louder at an audition to simulate an entire trombone section, however don't play the eighth notes too short. The passage will sound louder and fuller to the audience when the notes are broader. All things being equal, long notes will sound louder to the listener, so use this auditory phenomenon to your advantage whenever possible. Just detach the notes from each other avoid being dry and allow the dynamics to build to the climax of the section.\" -Ralph Sauer", videos: [["YouTube Symphony Orchestra", "fuqu_eNO51M"], ["Georg Solti, Chicago Symphony Orchestra", "9l9xZdiwOSk"], ["Leonard Bernstein, New York Philharmonic Orchestra", "c-YA9fhcJQc"], ["Herbert von Karajan, Berliner Philharmoniker", "O32PuoBWKC0"], ["Georg Szell, Cleveland Orchestra", "4hLcKfe-L_Y"], ["Antal Doráti, Royal Concertgebouw Orchestra", "qfIspYcnpeY"], ["Igor Markevitch, Orchester Lamoureux", "Ws_YvHfG1yQ"], ["Col. John R. Bourgeois, \"The President's Own\" Marine Band", "LkSbzdvKClM"], ["Southeast Trombone Symposium", "TBwYSOIscw0"]])

let berliozRomanCarnival = Composition(id: 5, composer: berlioz, name: "Le carnaval romain", date: "1844", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 9, description: "Excerpt 1", avgTempo: "", measures: "15 mm. after [15] to 9 mm. before [19]", pictures: [["Trombone 1", "1024"], ["Trombone 2", "1025"], ["Trombone 3", "1026"]]),
    Excerpt(id: 10, description: "Excerpt 2", avgTempo: "", measures: ": 6 mm. after [19] to End", pictures: [["Trombone 1", "1027"], ["Trombone 2", "1028"], ["Trombone 3", "1029"]])
], mutes: "", commonDifficulties: "Alto Clef, Musical Style", professionalAdvice: "", videos: [["YouTube Symphony Orchestra", "uYqItMmwwKE"], ["Jukka Pekka Saraste, WDR Sinfonieorchester Köln", "g4qZrpGI-fk"], ["Charles Dutoit, Orchestre symphonique de Montréal", "LK8mdW0LF6I"], ["Myung-Whun Chung, The Orchestre Philharmonique de Radio France", "0nJUSHqSaV8"], ["\"The President's Own\" U.S. Marine Band", "8GVLupxK9fI"], ["Major Larry H. Lang, US Air Force Heritage of America Band", "OifAYPuJHsE"]])

let berliozRomeoJuliet = Composition(id: 6, composer: berlioz, name: "Roméo et Juliette", date: "1839", era: "Romantic", genre: "Symphonie Dramatique", excerpts: [
    Excerpt(id: 11, description: "Excerpt 1", avgTempo: "", measures: "14 mm. before [4] to 14 mm. after [5]", pictures: [["Trombone 1", "1030"], ["Trombone 2", "1031"], ["Trombone 3", "1032"]])
], mutes: "", commonDifficulties: "Rhythm, Intonation", professionalAdvice: "", videos: [["Arturo Toscanini, NBC Symphony Orchestra", "zzlpOh6-Z1A?t=96"], ["Daniele Gatti, The Orchestre National de France", "zf7kGcB4VSQ"]])

let berliozSymphonie = Composition(id: 7, composer: berlioz, name: "Symphonie fantastique", date: "1830", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 12, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV [56] to [57]", pictures: [["Trombone 1", "1033"], ["Trombone 2", "1034"], ["Trombone 3", "1035"]]),
    Excerpt(id: 13, description: "Excerpt 2", avgTempo: "", measures: "Mov V, [60] to [61], 11 mm. before [63] to [63]", pictures: [["Trombone 1", "1036"], ["Trombone 2", "1037"], ["Trombone 3", "1038"]]),
    Excerpt(id: 14, description: "Excerpt 3", avgTempo: "", measures: "5 mm. after [85] to end.", pictures: [["Trombone 1", "1039"], ["Trombone 2", "1040"], ["Trombone 3", "1041"]])
], mutes: "", commonDifficulties: "Range, Potential Alto Trombone", professionalAdvice: "\"Originally written for the alto trombone, the Symphonie Fantastique is better played on the tenor today. Most conductors demand a wider dynamic range than is possible from the alto. In Berlioz, strive for a ringing brilliant sound.\" -Ralph Sauer", videos: [["Mariss Jansons, Bavarian Radio Symphony Orchestra", "yK6iAxe0oEc?t=284"], ["Leopold Stokowski, New Philharmonia Orchestra", "ewoAW-Zyuj8"], ["Myung-Whun Chung", "5HgqPpjIH5c"], ["Sir Colin Davis, London Symphony Orchestra", "HSsxoPcUaaQ"], ["Southeast Trombone Symposium", "oYSnGq5wNxU"], ["Joseph Alessi", "Mm8lPg8O0vw"]])

let bizetLArlesienne = Composition(id: 8, composer: bizet, name: "L'Arlésienne Suite #2 ", date: "1880", era: "Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 15, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, 1 mm. after [M] to [P]", pictures: [["Trombone 3", "1042"]])
], mutes: "", commonDifficulties: "Range, Tempo", professionalAdvice: "", videos: [["Herbert von Karajan, Berliner Philharmoniker", "M7p74wVffpI"], ["", ""]])

let borodinPolovetsian = Composition(id: 9, composer: borodin, name: "Polovetsian Dances", date: "1890", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 16, description: "Excerpt 1", avgTempo: "", measures: "No. 17, 8 mm. before [D] to [D]", pictures: [["Trombone 1", "1043"], ["Trombone 2", "1044"], ["Trombone 3", "1045"]]),
    Excerpt(id: 17, description: "Excerpt 2", avgTempo: "", measures: "No. 17, 4 mm. after ‘Allegro’ to [G]", pictures: [["Trombone 1", "1046"], ["Trombone 2", "1047"], ["Trombone 3", "1048"]]),
    Excerpt(id: 18, description: "Excerpt 3", avgTempo: "", measures: "No. 17, [K] to 23 mm. before [M]", pictures: [["Trombone 1", "1049"], ["Trombone 2", "1050"], ["Trombone 3", "1051"]]),
    Excerpt(id: 19, description: "Excerpt 4", avgTempo: "", measures: "No. 17, [R] to 12 mm. after [S] ", pictures: [["Trombone 1", "1052"], ["Trombone 2", "1053"], ["Trombone 3", "1054"]]),
    Excerpt(id: 20, description: "Excerpt 5", avgTempo: "", measures: "No. 17, [U] to End", pictures: [["Trombone 1", "1055"], ["Trombone 2", "1056"], ["Trombone 3", "1057"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Andrzej Kucybała, Stanisław Moniuszko School of Music Symphony Orchestra", "wiexn6O9To4"], ["Gustavo Dudamel, Vienna Philharmonic Orchestra", "YabEfOQRG3U"]])

let brahms1 = Composition(id: 10, composer: brahms, name: "Symphony No. 1", date: "1876", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 21, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, [C] to 14 mm. after [C]", pictures: [["Trombone 1", "1058"], ["Trombone 2", "1059"], ["Trombone 3", "1060"]])
], mutes: "", commonDifficulties: "Range, Potential Alto Trombone", professionalAdvice: "Brahms also intended his first trombone parts to be played on the alto trombone. In the United States, the alto has not been a requirement on auditions, however it is being used more and more by today's players. As in the Schumann, strive for a clear, bright fortissimo that is not too loud. Attacks can be slightly more Marcato than Schubert, but not as aggressive as Mahler or Bartok.\" -Ralph Sauer", videos: [["Leonard Bernstein, Vienna Philharmonic Orchestra", "EGRqIGOAPcE"], ["Herbert von Karajan, Berliner Philharmoniker", "45mWi4qY5v0"]])

let brahms2 = Composition(id: 11, composer: brahms, name: "Symphony No. 2", date: "1877", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 22, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, [O] to 14 mm. before [P], [P] to End", pictures: [["Trombone 1", "1061"], ["Trombone 2", "1062"], ["Trombone 3", "1063"]])
], mutes: "", commonDifficulties: "Range, Potential Alto Trombone, Tempo", professionalAdvice: "Brahms also intended his first trombone parts to be played on the alto trombone. In the United States, the alto has not been a requirement on auditions, however it is being used more and more by today's players. As in the Schumann, strive for a clear, bright fortissimo that is not too loud. Attacks can be slightly more Marcato than Schubert, but not as aggressive as Mahler or Bartok.\" -Ralph Sauer", videos: [["Leonard Bernstein, Wiener Philharmoniker", "6nKd-ia7_Lc"], ["Herbert von Karajan, Berlin Philarmonic Orchestra", "nX3RX3A3CbI"], ["Carlos Kleiber, Wiener Philharmoniker", "HCkSpCh4Wcw"]])

let brahms3 = Composition(id: 12, composer: brahms, name: "Symphony No. 3", date: "1883", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 23, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, 1 mm. after [I] to [K]", pictures: [["Trombone 1", "1064"], ["Trombone 2", "1065"], ["Trombone 3", "1066"]]),
    Excerpt(id: 24, description: "Excerpt 2", avgTempo: "", measures: "Mov. IV, 4 mm. before [P] to 18 mm. after [P] ", pictures: [["Trombone 1", "1067"], ["Trombone 2", "1068"], ["Trombone 3", "1069"]])
], mutes: "", commonDifficulties: "Tempo", professionalAdvice: "Brahms also intended his first trombone parts to be played on the alto trombone. In the United States, the alto has not been a requirement on auditions, however it is being used more and more by today's players. As in the Schumann, strive for a clear, bright fortissimo that is not too loud. Attacks can be slightly more Marcato than Schubert, but not as aggressive as Mahler or Bartok.\" -Ralph Sauer", videos: [["Herbert von Karajan, Berliner Philharmoniker", "QaItCES17AY"], ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "u68ETRjNQME"]])

let brahms4 = Composition(id: 13, composer: brahms, name: "Symphony No. 4", date: "1885", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, [E] to 23 after [E]", pictures: [["Trombone 1", "1070"], ["Trombone 2", "1071"], ["Trombone 3", "1072"]])
], mutes: "", commonDifficulties: "Dynamics, Intonation", professionalAdvice: "Brahms also intended his first trombone parts to be played on the alto trombone. In the United States, the alto has not been a requirement on auditions, however it is being used more and more by today's players. As in the Schumann, strive for a clear, bright fortissimo that is not too loud. Attacks can be slightly more Marcato than Schubert, but not as aggressive as Mahler or Bartok.\" -Ralph Sauer", videos: [["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "o69YVL_XKJo"], ["Myung-Whun Chung, The Orchestre Philharmonique de Radio France", "G8R7T0R4NC0"]])

let brahmsAcademic = Composition(id: 14, composer: brahms, name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 26, description: "Excerpt 1", avgTempo: "", measures: "[C] to 14 mm. before [E]", pictures: [["Trombone 1", "1073"], ["Trombone 2", "1074"], ["Trombone 3", "1075"]]),
    Excerpt(id: 27, description: "Excerpt 2", avgTempo: "", measures: "10 mm. before [F] to 3 mm. after [F]", pictures: [["Trombone 1", "1076"], ["Trombone 2", "1077"], ["Trombone 3", "1078"]]),
    Excerpt(id: 28, description: "Excerpt 3", avgTempo: "", measures: "[K] to 11 mm. before [L]", pictures: [["Trombone 1", "1079"], ["Trombone 2", "1080"], ["Trombone 3", "1081"]]),
    Excerpt(id: 29, description: "Excerpt 4", avgTempo: "", measures: "[L] to 3 mm. after [M]", pictures: [["Trombone 1", "1082"], ["Trombone 2", "1083"], ["Trombone 3", "1084"]]),
    Excerpt(id: 30, description: "Excerpt 5", avgTempo: "", measures: "[Maestoso] to End", pictures: [["Trombone 1", "1085"], ["Trombone 2", "1086"], ["Trombone 3", "1087"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Leonard Bernstein", "Y1E6FBi-AJw"], ["Bernard Haitink, Royal Concertgebouw Orchestra", "5AkQrnLPvC4"], ["Mark H. Hindsley, The University of Illinois Concert Band", "fiW2N96aPoE"]])

let brahmsTragic = Composition(id: 15, composer: brahms, name: "Tragic Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 31, description: "Excerpt 1", avgTempo: "", measures: "[E] to 8 mm. after [E]", pictures: [["Trombone 1", "1088"], ["Trombone 2", "1089"], ["Trombone 3", "1090"]]),
    Excerpt(id: 32, description: "Excerpt 2", avgTempo: "", measures: "[N] to 14 mm. before [P]", pictures: [["Trombone 1", "1091"], ["Trombone 2", "1092"], ["Trombone 3", "1093"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Leonard Bernstein, Vienna Philharmonic Orchestra", "siYoz9CLA2c"], ["Herbert von Karajan, Berlin Philharmonic", "3ixfKBIkz1U"], ["Daniele Gatti, Royal Concertgebouw Orchestra", "TQ5NEdUiIec"]])

let bruckner4 = Composition(id: 16, composer: bruckner, name: "Symphony No. 4", date: "1874", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 33, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, [A] to [B]", pictures: [["Trombone 1", "1094"], ["Trombone 2", "1095"], ["Trombone 3", "1096"]]),
    Excerpt(id: 34, description: "Excerpt 2", avgTempo: "", measures: "Mov I, mm. 305 to mm. 327", pictures: [["Trombone 1", "1097"], ["Trombone 2", "1098"], ["Trombone 3", "1099"]]),
    Excerpt(id: 35, description: "Excerpt 3", avgTempo: "", measures: "Mov. IV, [E] to [F]", pictures: [["Trombone 1", "1100"], ["Trombone 2", "1101"], ["Trombone 3", "1102"]]),
    Excerpt(id: 36, description: "Excerpt 4", avgTempo: "", measures: "Mov. IV, [M] to [O]", pictures: [["Trombone 1", "1103"], ["Trombone 2", "1104"], ["Trombone 3", "1105"]])
], mutes: "", commonDifficulties: "Rhythm", professionalAdvice: "", videos: [["Sergiu Celibidache, Münchner Philharmoniker", "LY7m119eOys"], ["Gustavo Gimeno, The Radio Philharmonic Orchestra", "G_VFA988d8s&vl=en"]])

let bruckner7 = Composition(id: 17, composer: bruckner, name: "Symphony No. 7", date: "1881", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 37, description: "Excerpt 1", avgTempo: "", measures: "Mov I, to mm. 34 to mm. 43", pictures: [["Trombone 1", "1106"], ["Trombone 2", "1107"], ["Trombone 3", "1108"]]),
    Excerpt(id: 38, description: "Excerpt 2", avgTempo: "", measures: "Mov I, mm. 114 to mm. 148", pictures: [["Trombone 1", "1109"], ["Trombone 2", "1110"], ["Trombone 3", "1111"]]),
    Excerpt(id: 39, description: "Excerpt 2 (continued)", avgTempo: "", measures: "Mov I, mm. 114 to mm. 148", pictures: [["Trombone 1", "1112"], ["Trombone 2", "1113"], ["Trombone 3", "1114"]]),
    Excerpt(id: 40, description: "Excerpt 3", avgTempo: "", measures: "", pictures: [["Trombone 1", "1115"], ["Trombone 2", "1116"], ["Trombone 3", "1117"]]),
    Excerpt(id: 41, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, mm. 235 to [N]", pictures: [["Trombone 1", "1118"], ["Trombone 2", "1119"], ["Trombone 3", "1120"]]),
    Excerpt(id: 42, description: "Excerpt 5", avgTempo: "", measures: "Mov. I, [S] to mm. 362", pictures: [["Trombone 1", "1121"], ["Trombone 2", "1122"], ["Trombone 3", "1123"]]),
    Excerpt(id: 43, description: "Excerpt 6", avgTempo: "", measures: "Mov. I, mm. 371 to mm. 386", pictures: [["Trombone 1", "1124"], ["Trombone 2", "1125"], ["Trombone 3", "1126"]]),
    Excerpt(id: 44, description: "Excerpt 7", avgTempo: "", measures: "Mov. I, [X] to End", pictures: [["Trombone 1", "1127"], ["Trombone 2", "1128"], ["Trombone 3", "1129"]]),
    Excerpt(id: 45, description: "Excerpt 8", avgTempo: "", measures: "Mov. II, mm. 25 to mm. 30", pictures: [["Trombone 1", "1130"], ["Trombone 2", "1131"], ["Trombone 3", "1132"]]),
    Excerpt(id: 46, description: "Excerpt 9", avgTempo: "", measures: "Mov. II, mm. 120 to [P] ", pictures: [["Trombone 1", "1133"], ["Trombone 2", "1134"], ["Trombone 3", "1135"]]),
    Excerpt(id: 47, description: "Excerpt 10", avgTempo: "", measures: "Mov. II, 1 mm. before [U] to [X]", pictures: [["Trombone 1", "1136"], ["Trombone 2", "1137"], ["Trombone 3", "1138"]]),
    Excerpt(id: 48, description: "Excerpt 11", avgTempo: "", measures: "Mov. III, mm. 39 to mm. 90", pictures: [["Trombone 1", "1139"], ["Trombone 2", "1140"], ["Trombone 3", "1141"]]),
    Excerpt(id: 49, description: "Excerpt 12", avgTempo: "", measures: "Mov. III, mm. 219 to mm. 270", pictures: [["Trombone 1", "1142"], ["Trombone 2", "1143"], ["Trombone 3", "1144"]]),
    Excerpt(id: 50, description: "Excerpt 13", avgTempo: "", measures: "Mov. IV, [F] to mm. 112", pictures: [["Trombone 1", "1145"], ["Trombone 2", "1146"], ["Trombone 3", "1147"]]),
    Excerpt(id: 51, description: "Excerpt 14", avgTempo: "", measures: "Mov. IV, [P] to [S]", pictures: [["Trombone 1", "1148"], ["Trombone 2", "1149"], ["Trombone 3", "1150"]]),
    Excerpt(id: 52, description: "Excerpt 15", avgTempo: "", measures: "Mov. IV, mm. 251 to [X] ", pictures: [["Trombone 1", "1151"], ["Trombone 2", "1152"], ["Trombone 3", "1153"]]),
    Excerpt(id: 53, description: "Excerpt 16", avgTempo: "", measures: "Mov. IV, mm. 308 to End", pictures: [["Trombone 1", "1154"], ["Trombone 2", "1155"], ["Trombone 3", "1156"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Christoph Eschenbach, Frankfurt Radio Symphony", "uaV3eEJB55c"], ["Sergiu Celibidache, Münchner Philharmoniker", "2X2bbusaOzI"], ["Herbert von Karajan, Wiener Philharmoniker", "3pioV8yB3iA"]])

let bruckner8 = Composition(id: 18, composer: bruckner, name: "Symphony No. 8", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 54, description: "Excerpt 1", avgTempo: "", measures: "Mov. IV, mm. 3 to [40]", pictures: [["Trombone 1", "1157"], ["Trombone 2", "1158"], ["Trombone 3", "1159"]]),
    Excerpt(id: 55, description: "Excerpt 2", avgTempo: "", measures: "Mov. IV, [X] to [Z] ", pictures: [["Trombone 1", "1160"], ["Trombone 2", "1161"], ["Trombone 3", "1162"]]),
    Excerpt(id: 56, description: "Excerpt 3", avgTempo: "", measures: "Mov. IV, mm. 459 to [Hh]", pictures: [["Trombone 1", "1163"], ["Trombone 2", "1164"], ["Trombone 3", "1165"]]),
    Excerpt(id: 57, description: "Excerpt 4", avgTempo: "", measures: "Mov. IV, mm. 701 to End", pictures: [["Trombone 1", "1166"], ["Trombone 2", "1167"], ["Trombone 3", "1168"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Sergiu Celibidache, Münchner Philharmoniker", "elVHvTrEM34"], ["Pierre Boulez, Vienna Philharmonic Orchestra", "ufqC1LCpHV4"], ["Herbert von Karajan, Vienna Philharmonic Orchestra", "sJf3KmAg08"], ["Carlo Maria Giulini, Vienna Philharmonic Orchestra", "xT5kreOhjxU"]])

let bruckner9 = Composition(id: 19, composer: bruckner, name: "Symphony No. 9", date: "1887", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 58, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, [C] to mm. 75", pictures: [["Trombone 1", "1169"], ["Trombone 2", "1170"], ["Trombone 3", "1171"]]),
    Excerpt(id: 59, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, mm. 143 to mm. 147", pictures: [["Trombone 1", "1172"], ["Trombone 2", "1173"], ["Trombone 3", "1174"]]),
    Excerpt(id: 60, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, mm. 199 to [H]", pictures: [["Trombone 1", "1175"], ["Trombone 2", "1176"], ["Trombone 3", "1177"]]),
    Excerpt(id: 61, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, mm. 239 to [L]", pictures: [["Trombone 1", "1178"], ["Trombone 2", "1179"], ["Trombone 3", "1180"]]),
    Excerpt(id: 62, description: "Excerpt 5", avgTempo: "", measures: "Mov. I, [N] to mm. 395", pictures: [["Trombone 1", "1181"], ["Trombone 2", "1182"], ["Trombone 3", "1183"]]),
    Excerpt(id: 63, description: "Excerpt 6", avgTempo: "", measures: "Mov. I, mm. 463 to mm. 516", pictures: [["Trombone 1", "1184"], ["Trombone 2", "1185"], ["Trombone 3", "1186"]]),
    Excerpt(id: 64, description: "Excerpt 7", avgTempo: "", measures: "Mov. I, [Y] to End", pictures: [["Trombone 1", "1187"], ["Trombone 2", "1188"], ["Trombone 3", "1189"]]),
    Excerpt(id: 65, description: "Excerpt 8", avgTempo: "", measures: "Mov. II, mm. 44 to mm. 58", pictures: [["Trombone 1", "1190"], ["Trombone 2", "1191"], ["Trombone 3", "1192"]]),
    Excerpt(id: 66, description: "Excerpt 9", avgTempo: "", measures: "Mov. II, mm. 97 to mm. 113", pictures: [["Trombone 1", "1193"], ["Trombone 2", "1194"], ["Trombone 3", "1195"]]),
    Excerpt(id: 67, description: "Excerpt 10", avgTempo: "", measures: "Mov. II, mm. 202 to mm. 247", pictures: [["Trombone 1", "1196"], ["Trombone 2", "1197"], ["Trombone 3", "1198"]]),
    Excerpt(id: 68, description: "Excerpt 11", avgTempo: "", measures: "Mov. III, [A] to [B]", pictures: [["Trombone 1", "1199"], ["Trombone 2", "1200"], ["Trombone 3", "1201"]]),
    Excerpt(id: 69, description: "Excerpt 12", avgTempo: "", measures: "Mov. III, mm. 80 to mm. 101", pictures: [["Trombone 1", "1202"], ["Trombone 2", "1203"], ["Trombone 3", "1204"]]),
    Excerpt(id: 70, description: "Excerpt 13", avgTempo: "", measures: "Mov. III, [H] to [J]", pictures: [["Trombone 1", "1205"], ["Trombone 2", "1206"], ["Trombone 3", "1207"]]),
    Excerpt(id: 71, description: "Excerpt 14", avgTempo: "", measures: "Mov. III, mm. 145 to mm. 151", pictures: [["Trombone 1", "1208"], ["Trombone 2", "1209"], ["Trombone 3", "1210"]]),
    Excerpt(id: 72, description: "Excerpt 15", avgTempo: "", measures: "Mov. III, [O] to [R]", pictures: [["Trombone 1", "1211"], ["Trombone 2", "1212"], ["Trombone 3", "1213"]]),
    Excerpt(id: 73, description: "Excerpt 16", avgTempo: "", measures: "Mov. III, [Y] to End", pictures: [["Trombone 1", "1214"], ["Trombone 2", "1215"], ["Trombone 3", "1216"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Leonard Bernstein, Vienna Philharmonic Orchestra", "Tw2LNhwnquk"], ["Bernard Haitink, The Orchestre National de France", "MIJET6NO4-k"], ["Stanisław Skrowaczewski, Frankfurt Radio Symphony Orchestra", "Az-kHLRQhsk"], ["Sergiu Celibidache, Munich Philharmonic Orchestra", "JvlkX4VGN-c"]])

let dvorak8 = Composition(id: 20, composer: dvorak, name: "Symphony No. 8", date: "1889", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 74, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, Beginning to mm. 19", pictures: [["Trombone 1", "1217"], ["Trombone 2", "1218"], ["Trombone 3", "1219"]]),
    Excerpt(id: 75, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, 1 mm. before [C] to 5 mm. after [C]", pictures: [["Trombone 1", "1220"], ["Trombone 2", "1221"], ["Trombone 3", "1222"]]),
    Excerpt(id: 76, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, 13 mm. after [D] to 19 mm. after [E]", pictures: [["Trombone 1", "1223"], ["Trombone 2", "1224"], ["Trombone 3", "1225"]]),
    Excerpt(id: 77, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, [F] to 19 mm. after [F]", pictures: [["Trombone 1", "1226"], ["Trombone 2", "1227"], ["Trombone 3", "1228"]]),
    Excerpt(id: 78, description: "Excerpt 5", avgTempo: "", measures: "Mov. I, 8 mm. after [J] to 5 mm. after [K]", pictures: [["Trombone 1", "1229"], ["Trombone 2", "1230"], ["Trombone 3", "1231"]]),
    Excerpt(id: 79, description: "Excerpt 6", avgTempo: "", measures: "Mov. I, 16 mm. before [L] to 3 mm. after [L]", pictures: [["Trombone 1", "1232"], ["Trombone 2", "1233"], ["Trombone 3", "1234"]]),
    Excerpt(id: 80, description: "Excerpt 7", avgTempo: "", measures: "Mov. I, 4 mm. after [N] to End", pictures: [["Trombone 1", "1235"], ["Trombone 2", "1236"], ["Trombone 3", "1237"]]),
    Excerpt(id: 81, description: "Excerpt 8", avgTempo: "", measures: "Mov. IV, [C] to [D]", pictures: [["Trombone 1", "1238"], ["Trombone 2", "1239"], ["Trombone 3", "1240"]]),
    Excerpt(id: 82, description: "Excerpt 9", avgTempo: "", measures: "Mov. IV, [E] to 1 mm. after [F]", pictures: [["Trombone 1", "1241"], ["Trombone 2", "1242"], ["Trombone 3", "1243"]]),
    Excerpt(id: 83, description: "Excerpt 10", avgTempo: "", measures: "Mov. IV, 1 mm. before [H] to 13 mm. after [H]", pictures: [["Trombone 1", "1244"], ["Trombone 2", "1245"], ["Trombone 3", "1246"]]),
    Excerpt(id: 84, description: "Excerpt 11", avgTempo: "", measures: "Mov. IV, 6 mm. before [K] to 7 mm. after [K]", pictures: [["Trombone 1", "1247"], ["Trombone 2", "1248"], ["Trombone 3", "1249"]]),
    Excerpt(id: 85, description: "Excerpt 12", avgTempo: "", measures: "Mov. IV, [R] to End", pictures: [["Trombone 1", "1250"], ["Trombone 2", "1251"], ["Trombone 3", "1252"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Manfred Honeck, Frankfurt Radio Symphony Orchestra", "QXAv-NGppFw"], ["Yannick Nézet-Séguin, Rotterdams Philharmonisch Orkest", "XRmcSm-YVZc"]])





let pictures = [["Trombone 1", ""], ["Trombone 2", ""], ["Trombone 3", ""]]

class TromboneContentModel: ObservableObject {
    var excerpts: [Composition] = [
        bachCelloSuite, beethoven5, beethoven9, beethovenFidelio, berliozFaust, berliozRomanCarnival, berliozRomeoJuliet, berliozSymphonie, bizetLArlesienne, borodinPolovetsian, brahms1, brahms2, brahms3, brahms4, brahmsAcademic, brahmsTragic, bruckner4, bruckner7, bruckner8, bruckner9, dvorak8
    ]
    
    var composers: [Composer] = [
        bach, beethoven, berlioz, bizet, borodin, brahms, bruckner, dvorak
    ]
}
