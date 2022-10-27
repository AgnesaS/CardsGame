//
//  ContentView.swift
//  CardsGame
//
//  Created by Agnesa  on 24.10.22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Proporties
    @State var playCard1 = "card6"
    @State var playCard2 = "card2"
    @State var score1 = 0
    @State var score2 = 0
    
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Image(playCard1)
                    })
                    
                    Spacer()
                    Image(playCard2)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let player1Random = Int.random(in: 2...14)
                    let player2Random = Int.random(in: 2...14)
                    
                    playCard1 = "card" + String(player1Random)
                    playCard2 = "card" + String(player2Random)
                    if player1Random > player2Random{
                        score1 += 1
                    }
                    else if player2Random > player1Random{
                        score2 += 1
                    }
                                          
                                          }, label: {
                        Image("dealbutton")
                    })
                    
                    Spacer()
                    HStack{
                        Spacer()
                        VStack(){
                            Button(action: {
                              //  score1 += 1
                            }, label: {
                                Text("Player1")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 20.0)
                            })
                            
                            Text(String(score1))
                                .font(.title)
                                .foregroundColor(Color.white)
                            
                        }
                        Spacer()
                        VStack(){
                            Button(action: {
                               // score2 += 1
                            }, label: {
                                Text("Player2")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 20.0)
                                
                            })
                            
                            Text(String(score2))
                                .font(.title)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                       }
                       }
                       
                       
                       }
                       
                       struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
