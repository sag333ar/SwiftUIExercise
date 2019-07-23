//
//  ContentView.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0
 
    var body: some View {
        TabbedView(selection: $selection){
            ExpensesListView(expenses: Expense.fixedEntries)
                .tabItem {
                    VStack {
                        Image(systemName: "list.number.rtl")
                        Text("Expenses")
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "chart.bar.fill")
                        Text("Reports")
                    }
            }
            .tag(1)
        }
    }
}

#if DEBUG
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
#endif
