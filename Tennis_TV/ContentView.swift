//
//  ContentView.swift
//  Tennis
//
//  Created by Kalyan Chakravarthy Narne on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    
    var players: [Player] = [ Player(name: "Rafael Nadal", headline: "Spain", bio: "Spanish professional tennis player currently ranked world No. 1 in men's singles tennis by the Association of Tennis Professionals (ATP). Nadal has won 19 Grand Slam singles titles, the second-most in history for a male player, as well as a record 35 ATP Tour Masters 1000 titles, 20 ATP Tour 500 titles, and the 2008 Olympic gold medal in singles. In addition, Nadal has held the world No. 1 ranking for a total of 198 weeks, including being the year-end No. 1 five times."),
                              Player(name: "Novak Djokovic", headline: "Serbia", bio: "Serbian professional tennis player who is currently ranked world No. 2 in men's singles tennis by the Association of Tennis Professionals (ATP). Djokovic has won 16 Grand Slam singles titles, five ATP Finals titles, 34 ATP Tour Masters 1000 titles, 13 ATP Tour 500 titles, and has held the No. 1 spot in the ATP rankings for 275 weeks. In majors, he has won a record seven Australian Open titles, five Wimbledon titles, three US Open titles, and one French Open title. By winning the 2016 French Open, he became the eighth player in history to achieve the Career Grand Slam and the third man to hold all four major titles at once, the first since Rod Laver in 1969 and the first ever to do so on three different surfaces. He is the only male player to have won all nine of the Masters 1000 tournaments."),
                              Player(name: "Roger Federer", headline: "Switzerland", bio: "Swiss professional tennis player who is ranked world No. 3 in men's singles tennis by the Association of Tennis Professionals (ATP). He has won 20 Grand Slam singles titles—the most in history by a male player—and has held the world No. 1 spot in the ATP rankings for a record total of 310 weeks (including a record 237 consecutive weeks) and was the year-end No. 1 five times, including four consecutive. Federer, who turned professional in 1998, was continuously ranked in the top ten from October 2002 to November 2019."),
                              Player(name: "Dominic Thiem", headline: "Austria", bio: "Austrian professional tennis player. His career-high ATP ranking is world No. 4, which he first achieved on 6 November 2017. He is the second highest-ranked Austrian player in history, behind Thomas Muster (#1, 1996). He has won sixteen ATP singles titles and reached twenty-four finals."),
                              Player(name: "Daniil Medvedev", headline: "Russia", bio: "Russian professional tennis player. Medvedev has a career-high ATP singles ranking of world No. 4, achieved on 9 September 2019. He has won seven ATP singles titles, including two Masters 1000 titles."),
                              Player(name: "Stefanos Tsitsipas", headline: "Greece", bio: "Greek professional tennis player. He is the youngest player ranked in the top 10 by the Association of Tennis Professionals (ATP) and has a career-high ranking of No. 5 in the world, making him the highest-ranked Greek player in history. He has won four ATP singles titles and reached nine finals."),
                              Player(name: "Alexander Zverev", headline: "Germany", bio: "German professional tennis player. He is the second-youngest player ranked in the top 10 by the Association of Tennis Professionals (ATP), and was a permanent fixture in the top 5 throughout 2018. He has won 11 ATP titles in singles and two in doubles."),
                              Player(name: "Matteo Berrettini", headline: "Italy", bio: "Italian tennis player. Berrettini has a career high ATP singles ranking of world No. 8, achieved on 4 November 2019, and a career high ATP doubles ranking of world No. 105, achieved on 22 July 2019.")]
    var body: some View {
        NavigationView {
            List(players) { player in
                PlayerCell(player: player)
            }.navigationTitle("ATP players 🎾")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(players: testData)
    }
}

struct PlayerCell: View {
    let player: Player
    var body: some View {
        NavigationLink(destination: PlayerDetail(name: player.name, bio: player.bio, headline: player.headline)) {
            Image(systemName: "person.fill")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(player.name)
                Text(player.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
