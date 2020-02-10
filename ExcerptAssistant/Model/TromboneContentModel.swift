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

//********************************************************//
//                                                        //
//                       Composers                        //
//                                                        //
//********************************************************//

let bach = Composer(id: 0, name: "Johann Sebastian Bach", shortName: "Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.")

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", shortName: "Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2001, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.")

let berlioz = Composer(id: 2, name: "Hector Berlioz", shortName: "Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.")

let bizet = Composer(id: 3, name: "Georges Bizet", shortName: "Bizet", ipa: "zhawrzh biˈzeɪ", image: 2003, country: "France", dates: "1838-1875", bio: "Georges Bizet was a prominant French composer of the Romantic Era. Best known for his operas and incidental music, Bizet had little success until his final work \"Carmen\".")

let borodin = Composer(id: 4, name: "Alexander Borodin", shortName: "Borodin", ipa: "ɐlʲɪkˈsandr bərɐˈdʲin", image: 2004, country: "Russia", dates: "1833-1887", bio: "Alexander Borodin was a Russian Chemist and Romantic composer, who was one of the major composers who advocated for Russian nationalist music. Borodin is best known for his symphonies, and his only opera \"Prince Igor\". He also made major contributions to the field of organic chemistry, and was a major proponent of education, founding a school of medicine for women in St. Petersburg.")

let brahms = Composer(id: 5, name: "Johannes Brahms", shortName: "Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2005, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.")

let bruckner = Composer(id: 6, name: "Anton Bruckner", shortName: "Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2006, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.")

let dvorak = Composer(id: 7, name: "Antonín Dvořák", shortName: "Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2007, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.")

let franck = Composer(id: 8, name: "César Franck", shortName: "Franck", ipa: "seɪˈzar frɑŋk", image: 2008, country: "United Kingdom of the Netherlands (Now Belgium)", dates: "1822 - 1890", bio: "Franck studied music in Paris at a young age. After his studies, he returned to Belgium and gained a terrible reputation for his oratorio \"Ruth\", and moved to Paris where he became an organist and teacher. Later in life, he became the organist for the Basilica of Saint Clotilde, where he remained for the rest of his life, composing in his free time pieces that are now considered standard repetoire.")

let haydn = Composer(id: 9, name: "Franz Joseph Haydn", shortName: "Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2009, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.")

let holst = Composer(id: 10, name: "Gustav Holst", shortName: "Holst", ipa: "ˈgʊs tɑv hoʊlst", image: 2010, country: "England", dates: "1874-1934", bio: "Holst was a popular English composer of the modern era. He aspired to become a concert pianist, but neuritis in his right arm prevented him. Against his father's wishes, he studied to become a composer. He was unable to support himself from his compositions alone, and started to play and teach the trombone professionally. He is most well known for his orchestral composition \"The Planets\".")

let mahler = Composer(id: 11, name: "Gustav Mahler", shortName: "Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2011, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.")

let mozart = Composer(id: 12, name: "Wolfgang Amadeus Mozart", shortName: "Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2012, country: "Germant", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.")

let mussorgsky = Composer(id: 13, name: "Modest Mussorgsky", shortName: "Mussorgsky", ipa: "moʊˈdɛst mʊˈsɔrg ski", image: 2013, country: "Russia", dates: "1839-1881", bio: "Mussorgsky was one of the most important composers in Russia during his lifetime. He frequently incorporated folk music, and discarded western traditions in favor of Russian nationalism. Many of his works are most famous through arrangements by other composers.")

let ravel = Composer(id: 14, name: "Maurice Ravel", shortName: "Ravel", ipa: "moʊˈris rəˈvɛl", image: 2014, country: "France", dates: "1875-1937", bio: "Ravel was an impressionist French composer. He was a careful, and slow composer, and composed much less compared to many other composers. He was also one of the first composers to realize the potential of recorded music, and was one of the first composers to record their music and marked it to a larger audience this way.")

//********************************************************//
//                                                        //
//                       Excerpts                         //
//                                                        //
//********************************************************//

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

let dvorak9 = Composition(id: 21, composer: dvorak, name: "Symphony No. 9", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 86, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, 20 mm. before [1] to 8 mm. after [1], 23 mm. after [5] to [6]", pictures: [["Trombone 1", "1253"], ["Trombone 2", "1254"], ["Trombone 3", "1255"]]),
    Excerpt(id: 87, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, 5 mm. after [7] to 7 mm. before [9]", pictures: [["Trombone 1", "1256"], ["Trombone 2", "1257"], ["Trombone 3", "1258"]]),
    Excerpt(id: 88, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, 16 mm. before [10] to 5 mm. before [10]", pictures: [["Trombone 1", "1259"], ["Trombone 2", "1260"], ["Trombone 3", "1261"]]),
    Excerpt(id: 89, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, [13] to End", pictures: [["Trombone 1", "1262"], ["Trombone 2", "1263"], ["Trombone 3", "1264"]]),
    Excerpt(id: 90, description: "Excerpt 5", avgTempo: "", measures: "Mov. II, Beginning to mm. 6", pictures: [["Trombone 1", "1265"], ["Trombone 2", "1266"], ["Trombone 3 and Tuba", "1267"]]),
    Excerpt(id: 91, description: "Excerpt 6", avgTempo: "", measures: "Mov. II, 7 mm. after [4] to 10 mm. after [4]", pictures: [["Trombone 1", "1268"], ["Trombone 2", "1269"], ["Trombone 3 and Tuba", "1270"]]),
    Excerpt(id: 92, description: "Excerpt 7", avgTempo: "", measures: "Mov. II, 8 mm. before End to 4 mm. before End", pictures: [["Trombone 1", "1271"], ["Trombone 2", "1272"], ["Trombone 3 and Tuba", "1273"]]),
    Excerpt(id: 93, description: "Excerpt 8", avgTempo: "", measures: "Mov. IV, 9 mm. after [7] to 4 mm. after [9]", pictures: [["Trombone 1", "1274"], ["Trombone 2", "1275"], ["Trombone 3", "1276"]]),
    Excerpt(id: 94, description: "Excerpt 9", avgTempo: "", measures: "Mov. IV, 5 mm. after [11] to 9 mm. after [12]", pictures: [["Trombone 1", "1277"], ["Trombone 2", "1278"], ["Trombone 3", "1279"]]),
    Excerpt(id: 95, description: "Excerpt 10", avgTempo: "", measures: "Mov. IV, 26 mm. before End to End", pictures: [["Trombone 1", "1280"], ["Trombone 2", "1281"], ["Trombone 3", "1282"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Sergiu Celibidache, Münchner Philharmoniker", "_9RT2nHD6CQ"], ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "jOofzffyDSA"], ["Kurt Redel, Slovak Philharmonic Orchestra"], ["Lorin Maazel, New York Philharmonic", "nSd1ye8l4RE"], ["Ferenc Fricsay, Berliner Philharmoniker", "oLWpgWuUaU4"]])

let franckD = Composition(id: 22, composer: franck, name: "Symphony in D minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 96, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, [N] to [O]", pictures: [["Trombones 1 and 2", "1283"], ["Trombone 3", "1284"]]),
    Excerpt(id: 97, description: "Excerpt 2", avgTempo: "", measures: "Mov. III, [N] to 18 mm. after [N]", pictures: [["Trombones 1 and 2", "1285"], ["Trombone 3", "1286"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Marc Minkowski, Frankfurt Radio Symphony", "uRWFjK11lfw"], ["Leonard Bernstein, Orchestre National de France", "uosj6PZLKKE"], ["Ricardo Muti, Philadelphia Orchestra", "0nF6TobCyV4"]])

let haydnCreation = Composition(id: 23, composer: haydn, name: "The Creation", date: "1798", era: "Classical", genre: "Oratorio", excerpts: [
    Excerpt(id: 98, description: "Excerpt 1", avgTempo: "", measures: "No. 26, Beginning to [C]", pictures: [["Trombone 1", "1287"], ["Trombone 2", "1288"], ["Trombone 3", "1289"]]),
    Excerpt(id: 99, description: "Excerpt 2", avgTempo: "", measures: "No. 28, [H] to 2 mm. before [K]", pictures: [["Trombone 1", "1290"], ["Trombone 2", "1291"], ["Trombone 3", "1292"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Phillip A. Swan, Lawrence Symphony Orchestra", "kaI8x-saprI"], ["Adam Fischer, Austro-Hungarian Haydn Philharmonic Orchestra & Wiener Kammerchor", "xIpSNMQZH9M"], ["Philipp von Steinaecker, Aus dem Dom zu Brixen", "l07oRR4u-rk"], ["Christopher Hogwood, Academy of Ancient Music", "bH5KM700AlQ"]])

let holstPlanets = Composition(id: 24, composer: holst, name: "The Planets", date: "1916", era: "Modern", genre: "Orchestral Suite", excerpts: [
    Excerpt(id: 100, description: "Excerpt 1", avgTempo: "", measures: "Jupiter, mm. 140 to 4 mm. before [8]", pictures: [["Trombones 1 and 2", "1293"], ["Trombone 3", "1294"]]),
    Excerpt(id: 101, description: "Excerpt 2", avgTempo: "", measures: "Jupiter, mm. 267 to 4 mm. before [12] ", pictures: [["Trombones 1 and 2", "1295"], ["Trombone 3", "1296"]]),
    Excerpt(id: 102, description: "Excerpt 3", avgTempo: "", measures: "Jupiter, [16] to 5 mm. after [17]", pictures: [["Trombones 1 and 2", "1297"], ["Trombone 3", "1298"]]),
    Excerpt(id: 103, description: "Excerpt 4", avgTempo: "", measures: "Uranus, [7] to [8]", pictures: [["Trombones 1 and 2", "1299"], ["Trombone 3", "1300"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Edward Gardner, National Youth Orchestra", "be7uEyyNIT4"], ["William Steinberg, Boston Symphony Orchestra", "Isic2Z2e2xs"], ["Sir Adrian Boult, BBC Symphony Orchestra", "eSqb7gD5acY"]])

let mahler2 = Composition(id: 25, composer: mahler, name: "Symphony No. 2", date: "1894", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, 10 mm. after [1] to [2]", pictures: [["Trombone 1", "1301"], ["Trombone 2", "1302"], ["Trombone 3", "1303"], ["Trombone 4", "1304"]]),
    Excerpt(id: 105, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, [5] to 4 mm. before [7]", pictures: [["Trombone 1", "1305"], ["Trombone 2", "1306"], ["Trombone 3", "1307"], ["Trombone 4", "1308"]]),
    Excerpt(id: 106, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, [11] to 5 mm. after [11]", pictures: [["Trombone 1", "1309"], ["Trombone 2", "1310"], ["Trombone 4", "1311"]]),
    Excerpt(id: 107, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, [15] to 4 mm. after [15]", pictures: [["Trombone 1", "1312"], ["Trombone 2", "1313"], ["Trombone 3", "1314"], ["Trombone 4", "1315"]]),
    Excerpt(id: 108, description: "Excerpt 5", avgTempo: "", measures: "Mov. I, 8 mm. after [16] to 8 mm. before [17]", pictures: [["Trombone 1", "1316"],]),
    Excerpt(id: 109, description: "Excerpt 6", avgTempo: "", measures: "Mov. I, 4 mm. after [17] to 7 mm. before [21]", pictures: [["Trombone 1", "1317"], ["Trombone 2", "1318"], ["Trombone 3", "1319"], ["Trombone 4", "1320"]]),
    Excerpt(id: 110, description: "Excerpt 7", avgTempo: "", measures: "Mov. I, 2 mm. before [22] to 5 mm. after [22]", pictures: [["Trombone 1", "1321"], ["Trombone 2", "1322"], ["Trombone 3", "1323"], ["Trombone 4", "1324"]]),
    Excerpt(id: 111, description: "Excerpt 8", avgTempo: "", measures: "Mov. I, 2 mm. after [24] to [26]", pictures: [["Trombone 1", "1325"], ["Trombone 2", "1326"], ["Trombone 3", "1327"], ["Trombone 4", "1328"]]),
    Excerpt(id: 112, description: "Excerpt 9", avgTempo: "", measures: "Mov. II, [7] to 4 mm. before [9]", pictures: [["Trombone 1", "1329"], ["Trombone 2", "1330"], ["Trombone 3", "1331"]]),
    Excerpt(id: 113, description: "Excerpt 10", avgTempo: "", measures: "Mov. III, [49] to 8 mm. before [51]", pictures: [["Trombone 1", "1332"], ["Trombone 2", "1333"], ["Trombone 3", "1334"], ["Trombone 4", "1335"]]),
    Excerpt(id: 114, description: "Excerpt 11", avgTempo: "", measures: "Mov. V, mm. 5 to [2]", pictures: [["Trombone 1", "1336"], ["Trombone 2", "1337"], ["Trombone 3", "1338"], ["Trombone 4", "1339"]]),
    Excerpt(id: 115, description: "Excerpt 12", avgTempo: "", measures: "Mov. V, 2 mm. before [4] to 2 mm. before [7]", pictures: [["Trombone 1", "1340"], ["Trombone 2", "1341"], ["Trombone 3", "1342"], ["Trombone 4", "1343"]]),
    Excerpt(id: 116, description: "Excerpt 13", avgTempo: "", measures: "Mov. V, [10] to 8 mm. before [13]", pictures: [["Trombone 1", "1344"], ["Trombone 2", "1345"], ["Trombone 3", "1346"], ["Trombone 4", "1347"]]),
    Excerpt(id: 117, description: "Excerpt 14", avgTempo: "", measures: "Mov. V, [14] to 10 mm. after [15]", pictures: [["Trombone 1", "1348"], ["Trombone 2", "1349"], ["Trombone 3", "1350"], ["Trombone 4", "1351"]]),
    Excerpt(id: 118, description: "Excerpt 15", avgTempo: "", measures: "Mov. V, 2 mm. after [18] to [21]", pictures: [["Trombone 1", "1352"], ["Trombone 2", "1353"], ["Trombone 3", "1354"], ["Trombone 4", "1355"]]),
    Excerpt(id: 119, description: "Excerpt 16", avgTempo: "", measures: "Mov. V, 1 mm. after [21] to 8 mm. after [21]", pictures: [["Trombone 1", "1356"]]),
    Excerpt(id: 120, description: "Excerpt 17", avgTempo: "", measures: "Mov. V, 1 mm. before [25] to [27]", pictures: [["Trombone 1", "1357"], ["Trombone 2", "1358"], ["Trombone 3", "1359"], ["Trombone 4", "1360"]]),
    Excerpt(id: 121, description: "Excerpt 18", avgTempo: "", measures: "Mov. V, 2 mm. before [37] to 5 mm. before [39]", pictures: [["Trombone 1", "1361"], ["Trombone 2", "1362"], ["Trombone 3", "1363"], ["Trombone 4", "1364"]]),
    Excerpt(id: 122, description: "Excerpt 19", avgTempo: "", measures: "Mov. V, 1 mm. before [42] to [43]", pictures: [["Trombone 1", "1365"], ["Trombone 2", "1366"], ["Trombone 3", "1367"], ["Trombone 4", "1368"]]),
    Excerpt(id: 123, description: "Excerpt 20", avgTempo: "", measures: "Mov. V, [48] to End", pictures: [["Trombone 1", "1369"], ["Trombone 2", "1370"], ["Trombone 3", "1371"], ["Trombone 4", "1372"]])
], mutes: "Yes", commonDifficulties: "", professionalAdvice: "", videos: [["Mariss Jansons, Royal Concertgebouw Orchestra", "sHsFIv8VA7w"], ["Leonard Bernstein, London Symphony Orchestra", "edA9Zard3-U"], ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra of Venezuela", "rKrsEbjXYX8"]])

let mahler3 = Composition(id: 26, composer: mahler, name: "Symphony No. 3", date: "1896", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 124, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, [13] to [17]", pictures: [["Trombone 1", "1373"], ["Trombone 2", "1374"], ["Trombone 3", "1375"], ["Trombone 4", "1376"]]),
    Excerpt(id: 125, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, 1 mm. before [33] to 2 mm. after [34]", pictures: [["Trombone 1", "1377"]]),
    Excerpt(id: 126, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, 1 mm. before [58] to 5 mm. before [62]", pictures: [["Trombone 1", "1378"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [[" Leonard Bernstein, Vienna Philharmonic Orchestra", "1AwFutIcnrU"], ["Semyon Bychkov, WDR Sinfonie-Orchester Koln", "pRhQhUtOpPI"]])

let mahler5 = Composition(id: 27, composer: mahler, name: "Symphony No. 5", date: "1902", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 127, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, 8 mm. after [11] to 4 mm. Before [12]", pictures: [["Trombone 1", "1379"], ["Trombone 2", "1380"], ["Trombone 3", "1381"]]),
    Excerpt(id: 128, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, [17] to 8 mm. after [18], [19] to Tempo I", pictures: [["Trombone 1", "1382"], ["Trombone 2", "1383"], ["Trombone 3", "1384"]]),
    Excerpt(id: 129, description: "Excerpt 3", avgTempo: "", measures: "Mov. II, [24] to [25]", pictures: [["Trombone 1", "1385"], ["Trombone 2", "1386"], ["Trombone 3", "1387"]]),
    Excerpt(id: 130, description: "Excerpt 4", avgTempo: "", measures: "Mov. III, 12 mm. after [15] to [17]", pictures: [["Trombone 1", "1388"], ["Trombone 2", "1389"], ["Trombone 3", "1390"]]),
    Excerpt(id: 131, description: "Excerpt 5", avgTempo: "", measures: "Mov. III, 12 mm. after [23] to 16 mm. after [23]", pictures: [["Trombone 1", "1391"], ["Trombone 2", "1392"]]),
    Excerpt(id: 132, description: "Excerpt 6", avgTempo: "", measures: "Mov. V, 2 mm. after [23] to [24]", pictures: [["Trombone 1", "1393"], ["Trombone 2", "1394"], ["Trombone 3", "1395"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Valery Gergiev, World Orchestra for Peace", "UjmthMDpyco"], ["Leonard Bernstein, Vienna Philharmonic", "nO0nytFsumo"], ["Claudio Abbado, Lucerne Festival Orchestra", "vOvXhyldUko"]])

let mahler7 = Composition(id: 28, composer: mahler, name: "Symphony No. 7", date: "1905", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 133, description: "Excerpt 1", avgTempo: "", measures: "Mov. I, Beginning to [3]", pictures: [["Trombone 1", "1396"], ["Trombone 2", "1397"], ["Trombone 3", "1398"]]),
    Excerpt(id: 134, description: "Excerpt 2", avgTempo: "", measures: "Mov. I, 5 mm. before [4] to 5 mm. after [5]", pictures: [["Trombone 1", "1399"], ["Trombone 2", "1400"], ["Trombone 3", "1401"]]),
    Excerpt(id: 135, description: "Excerpt 3", avgTempo: "", measures: "Mov. I, 3 mm. after [18] to [20]", pictures: [["Trombone 1", "1402"], ["Trombone 2", "1403"], ["Trombone 3", "1404"]]),
    Excerpt(id: 136, description: "Excerpt 4", avgTempo: "", measures: "Mov. I, [39] to 5 mm. after [41]", pictures: [["Trombone 1", "1405"], ["Trombone 2", "1406"], ["Trombone 3", "1407"]]),
    Excerpt(id: 137, description: "Excerpt 5", avgTempo: "", measures: "Mov. I, [42] to 3 mm. after [44]", pictures: [["Trombone 1", "1408"], ["Trombone 2", "1409"], ["Trombone 3", "1410"]]),
    Excerpt(id: 138, description: "Excerpt 6", avgTempo: "", measures: "Mov. I, 5 mm. before [46] to 2 mm. before [49]", pictures: [["Trombone 1", "1411"], ["Trombone 2", "1412"], ["Trombone 3", "1413"]]),
    Excerpt(id: 139, description: "Excerpt 7", avgTempo: "", measures: "Mov. I, 3 mm. before [51] to 6 mm. before [54]", pictures: [["Trombone 1", "1414"], ["Trombone 2", "1415"], ["Trombone 3", "1416"]]),
    Excerpt(id: 140, description: "Excerpt 8", avgTempo: "", measures: "Mov. I, [59] to 3 mm. after [61]", pictures: [["Trombone 1", "1417"], ["Trombone 2", "1418"], ["Trombone 3", "1419"]]),
    Excerpt(id: 141, description: "Excerpt 9", avgTempo: "", measures: "Mov. I, 4 mm. before [62] to 4 mm. after [65]", pictures: [["Trombone 1", "1420"], ["Trombone 2", "1421"], ["Trombone 3", "1422"]]),
    Excerpt(id: 142, description: "Excerpt 10", avgTempo: "", measures: "Mov. I, 4 mm. before [66] to End", pictures: [["Trombone 1", "1423"], ["Trombone 2", "1424"], ["Trombone 3", "1425"]]),
    Excerpt(id: 143, description: "Excerpt 11", avgTempo: "", measures: "Mov. III, 6 mm. before [164] to 5 mm. before [166]", pictures: [["Trombone 1", "1426"], ["Trombone 2", "1427"], ["Trombone 3", "1428"]]),
    Excerpt(id: 144, description: "Excerpt 12", avgTempo: "", measures: "Mov. V, 1 mm. before [228] to 3 mm. after [229]", pictures: [["Trombone 1", "1429"], ["Trombone 2", "1430"], ["Trombone 3", "1431"]]),
    Excerpt(id: 145, description: "Excerpt 13", avgTempo: "", measures: "Mov. V, 5 mm. after [233] to 8 mm. after [233]", pictures: [["Trombone 1", "1432"], ["Trombone 2", "1433"], ["Trombone 3", "1434"]]),
    Excerpt(id: 146, description: "Excerpt 14", avgTempo: "", measures: "Mov. V, [247] to 4 mm. after [247]", pictures: [["Trombone 1", "1435"], ["Trombone 2", "1436"], ["Trombone 3", "1437"]]),
    Excerpt(id: 147, description: "Excerpt 15", avgTempo: "", measures: "Mov. V, [254] to 5 mm. after [256]", pictures: [["Trombone 1", "1438"], ["Trombone 2", "1439"], ["Trombone 3", "1440"]]),
    Excerpt(id: 148, description: "Excerpt 16", avgTempo: "", measures: "Mov. V, 1 mm. after [258] to 3 mm. after [261]", pictures: [["Trombone 1", "1441"], ["Trombone 2", "1442"], ["Trombone 3", "1443"]]),
    Excerpt(id: 149, description: "Excerpt 17", avgTempo: "", measures: "Mov. V, [268] to [269]", pictures: [["Trombone 1", "1444"], ["Trombone 2", "1445"], ["Trombone 3", "1446"]]),
    Excerpt(id: 150, description: "Excerpt 18", avgTempo: "", measures: "Mov. V, 3 mm. before [272] to 2 mm. after [274]", pictures: [["Trombone 1", "1447"], ["Trombone 2", "1448"], ["Trombone 3", "1449"]]),
    Excerpt(id: 151, description: "Excerpt 19", avgTempo: "", measures: "Mov. V, 3 mm. before [285] to 2 mm. after [286]", pictures: [["Trombone 1", "1450"], ["Trombone 2", "1451"], ["Trombone 3", "1452"]]),
    Excerpt(id: 152, description: "Excerpt 20", avgTempo: "", measures: "Mov. V, 3 mm. after [290] to 1 mm. before [291]", pictures: [["Trombone 1", "1453"], ["Trombone 2", "1454"], ["Trombone 3", "1455"]]),
    Excerpt(id: 153, description: "Excerpt 21", avgTempo: "", measures: "Mov. V, [293] to End", pictures: [["Trombone 1", "1456"], ["Trombone 2", "1457"], ["Trombone 3", "1458"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Claudio Abbado, Lucerne Festival Orchestra", "QdxvC7NNSLQ"], ["Leonard Bernstein, Wiener Philharmoniker", "OCiKqIsF2IQ"], ["Bernard Haitink, Koninklijk Concertgebouworkest", "IEoYrRBAGqA"], ["James Levine, Chicago Symphony Orchestra", "zUZz38kq4pw"], ["Edo de Waart, The Radio Philharmonic Orchestra", "tGeJRmd0MSA"], ["Simon Rattle, Wiener Philharmoniker", "3FxBFaxBikU"], ["Otto Klemperer, New Philharmonia Orchestra", "0wMdEGIdZPU"], ["Sir Simon Rattle, Berlin Philharmonic", "C2LGbzI6diI"], ["Riccardo Chailly, Leipzig Gewandhaus Orchestra", "bXjaGRJNsqs"], ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "b0TsG3rIOU8"]])

let mozartRequiem = Composition(id: 29, composer: mozart, name: "Requiem", date: "1791", era: "Classical", genre: "Requiem", excerpts: [
    Excerpt(id: 154, description: "Excerpt 1", avgTempo: "72", measures: "Tuba Mirum, Beginning to [B]", pictures: [["Trombone 2", "1459"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["James Gaffigan, The Orchestre national de France", "Dp2SJN4UiE4"], ["Herbert von Karajan, Weiner Philharmoniker", "j8RXHA1M-f8"], ["Sir Colin Rex Davis, London Symphony Orchestra", "D95igow6I6g"], ["Sir Neville Marriner, Academy of St. Martin in the Fields", "sPlhKP0nZII"], ["John Eliot Gardiner, English Baroque Soloists", "FjiMQbLheLE"]])

let mussorgskyPictures = Composition(id: 30, composer: mussorgsky, name: "Pictures at an Exhibition", date: "1874", era: "Romantic", genre: "Piano Suite (Arranged for Orchestra by Ravel)", excerpts: [
    Excerpt(id: 155, description: "Excerpt 1", avgTempo: "", measures: "Promenade, 2 mm. before [5] to End", pictures: [["Trombone 1", "1460"], ["Trombone 3", "1461"]]),
    Excerpt(id: 156, description: "Excerpt 2", avgTempo: "", measures: "Promenade", pictures: [["Trombone 3", "1462"]]),
    Excerpt(id: 157, description: "Excerpt 3", avgTempo: "", measures: "The Great Gate of Kiev, [103] to [106]", pictures: [["Trombones 1 and 2", "1463"], ["Trombone 3", "1464"]]),
    Excerpt(id: 158, description: "Excerpt 4", avgTempo: "", measures: "The Great Gate of Kiev, [107] to [109]", pictures: [["Trombones 1 and 2", "1465"], ["Trombone 3", "1466"]]),
    Excerpt(id: 159, description: "Excerpt 5", avgTempo: "", measures: "The Great Gate of Kiev, [114] to [118]", pictures: [["Trombones 1 and 2", "1467"], ["Trombone 3", "1468"]]),
    Excerpt(id: 160, description: "Excerpt 6", avgTempo: "", measures: "The Great Gate of Kiev, [120] to End", pictures: [["Trombones 1 and 2", "1469"], ["Trombone 3", "1470"]])
], mutes: "", commonDifficulties: "", professionalAdvice: "", videos: [["Georg Solti, Chicago Symphony Orchestra", "syLm-9JyhuY"], ["Kurt Masur, Leipzig Gewandhaus Orchestra", "Sq7Qd9PSmR0"], ["Herbert von Karajan, Berliner Philharmoniker", "kkC3chi_ysw"]])

let ravelBolero = Composition(id: 31, composer: ravel, name: "Bolero", date: "1928", era: "Modern", genre: "Orchestral Piece", excerpts: [
    Excerpt(id: 161, description: "Excerpt 1", avgTempo: "", measures: "[10] to [11]", pictures: [["Trombone 1", "1471"]]),
    Excerpt(id: 162, description: "Excerpt 2", avgTempo: "", measures: "2 mm. after [17] to End", pictures: [["Trombones 1 and 2", "1472"], ["Trombone 3", "1473"]]),
], mutes: "", commonDifficulties: "Range", professionalAdvice: "", videos: [["Gustavo Dudamel, Wiener Philharmoniker", "mhhkGyJ092E"], ["Valery Gergiev, London Symphony Orchestra", "ODeNHRtVNO4"], ["정명훈 (Chung Myung-Whun), Seoul Philharmonic Orchestra", "avhSABEy_i4"], ["Sergiu Celibidache, The Danish National Radio Symphony Orchestra", "gy5Ve3338-E"]])





let pictures = [["Trombone 1", ""], ["Trombone 2", ""], ["Trombone 3", ""]]

class TromboneContentModel: ObservableObject {
    var excerpts: [Composition] = [
        bachCelloSuite, beethoven5, beethoven9, beethovenFidelio, berliozFaust, berliozRomanCarnival, berliozRomeoJuliet, berliozSymphonie, bizetLArlesienne, borodinPolovetsian, brahms1, brahms2, brahms3, brahms4, brahmsAcademic, brahmsTragic, bruckner4, bruckner7, bruckner8, bruckner9, dvorak8, dvorak9, franckD, haydnCreation, holstPlanets, mahler2, mahler3, mahler5, mahler7, mozartRequiem, mussorgskyPictures, ravelBolero
    ]
    
    var composers: [Composer] = [
        bach, beethoven, berlioz, bizet, borodin, brahms, bruckner, dvorak, franck, haydn, holst, mahler, mozart, mussorgsky, ravel
    ]
}
