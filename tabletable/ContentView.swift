//
//  ContentView.swift
//  tabletable
//
//  Created by Scholar on 6/27/24.
//

import SwiftUI

// LIST VERSION
struct Items: Identifiable {
    let id = UUID()
    let check: Bool
    let item: String
    let unit: Int
}

struct ContentView: View {
    @State private var items = [
        Items(check: true, item: "Boots", unit: 1),
        Items(check: true, item: "Sneakers", unit: 2),
        Items(check: false, item: "Sandals", unit: 1),
        Items(check: true, item: "Socks", unit: 4)
    ]
    
    @State var selectedTab = 2

    var body: some View {
        VStack {
//            HStack {
//                Text("<- Trips")
//                    .padding()
//                    //.frame(width: 200)
//                Spacer()
//                
//                    Button(action: {
//                        print("Make a new list?")
//                    }) {
//                        Spacer()
//                        Image(systemName: "plus")
//                            .resizable()
//                            .frame(width: 20, height: 20)
//                            .padding()
//                        //.frame(width: 200)
//                    }
//            }
            
            HStack {
                TextField("New List", text: .constant(""))
                    .font(.system(size: 30))
                    .fontWeight(.black)
                    .padding()

                TextField("                   < 7 days >", text: .constant(""))
                    .fontWeight(.bold)
                    .padding()
            }
            
                Text("Item                                                            Unit")
                .font(.system(size: 19))
                .font(.title3)
                .fontWeight(.medium)

            List(items) { item in
                HStack {
                    //Text(item.check ? "✓" : "X")
                    Image(systemName: "square")
                    Text(item.item)
                    Spacer()
                    Text("\(item.unit)")
                }
            }
            .listStyle(PlainListStyle())
            //.padding()
            
            TabView(selection: $selectedTab) {
                Image(systemName: "")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tabItem {
                        Image(systemName: "house")
                        //Text("home")
                    }
                    .tag(0) // idk what this does
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//// GRID VERSION (does not work)
//struct Stat: Identifiable, Equatable {
//    var id: String { name }
//    let name: String
//    let totalMatches: Int
//    let standingsPoints: Int
//}
//
//struct ContentView: View {
//    
//    let stats = [
//        Stat(name: "Fred", totalMatches: 12, standingsPoints: 87),
//        Stat(name: "Jim", totalMatches: 4, standingsPoints: 12),
//        Stat(name: "Dave", totalMatches: 9, standingsPoints: 91)]
//    
//    var body: some View {
//        List {
//            Grid {
//                GridRow {
//                    Text("Name")
//                    Text("Matches")
//                    Text("Points")
//                }
//                .bold()
//                Divider()
//                ForEach(stats) { stat in
//                    GridRow {
//                        Text(stat.name)
//                        Text(stat.totalMatches, format: .number)
//                        Text(stat.standingsPoints, format: .number)
//                    }
//                    if stat != stats.last {
//                        Divider()
//                    }
//                }
//            }
//        }
//    }
//}



//// TABLE VERSION THAT ONLY WORKS FOR IPAD VIEW (String)
//struct ContentView: View {
//    @State private var items = [
//        Items(check: "✓", item: "Boots", unit: 1),
//        Items(check: "✓", item: "Sneakers", unit: 2),
//        Items(check: "X", item: "Sandals", unit: 1),
//        Items(check: "✓", item: "Socks", unit: 4)
//    ]
//
//    var body: some View {
//        HStack {
//            TextField("New List", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                .fontWeight(.bold)
//                .padding()
//            
//            TextField("                   < 7 days >", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                .fontWeight(.bold)
//                .padding()
//        }
//        
//        Table(items) {
//            TableColumn("Check", value: \.check)
//                TableColumn("Item", value: \.item)
//            TableColumn("Unit") {
//                item in
//                Text(String(item.unit))
//            }
//        }
//        //.frame(width: 400, height: 800)
//    }
//} // closes struct
//
//struct Items: Identifiable {
//    let check: String
//    let item: String
//    let unit: Int
//    let id = UUID()
//
//    //var fullName: String {check + " " + item}
//}
//
//#Preview {
//    ContentView()
//}



//// TABLE VERSION THAT ONLY WORKS FOR IPAD VIEW (Boolean)
//struct ContentView: View {
//    @State private var items = [
//        Items(check: true, item: "Boots", unit: 1),
//        Items(check: true, item: "Sneakers", unit: 2),
//        Items(check: true, item: "Sandals", unit: 1),
//        Items(check: true, item: "Socks", unit: 4)
//    ]
//
//    var body: some View {
//        Table(items) {
//            TableColumn("Check", value: <#KeyPath<Items, String>#>)
//                TableColumn("Item", value: \.item)
//            TableColumn("Unit") {
//                item in
//                Text(String(item.unit))
//            }
//        }
//    }
//} // closes struct
//
//struct Items: Identifiable {
//    let check: Bool
//    let item: String
//    let unit: Int
//    let id = UUID()
//
//    //var fullName: String {check + " " + item}
//}
//
//#Preview {
//    ContentView()
//}
