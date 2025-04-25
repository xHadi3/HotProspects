//
//  ProspectsView.swift
//  HotProspects
//
//  Created by Hadi Al zayer on 27/10/1446 AH.
//

import SwiftData
import SwiftUI

struct ProspectsView: View {
    
    enum FilterType{
        case none, contacted, uncontacted
    }
    
    @Environment(\.modelContext) var modelContext
    @Query (sort: \Prospect.name) var prospect: [Prospect]
    let filter: FilterType
    
    
    var title : String{
        switch filter{
        case .none:
            "Everyone"
        case .contacted:
            "Contacted people"
        case .uncontacted:
            "Uncontacted people"
        }
    }
    
    var body: some View {
        NavigationStack{
            Text("People: \(prospect.count)")
                .navigationTitle(title)
                .toolbar{
                    Button("scan", systemImage: "qrcode.viewfinder"){
                        let prospect = Prospect(name: "Hadi", emailAddress: "hadi@gmail.com", isContacted: false)
                        modelContext.insert(prospect)
                    }
                }
        }
    }
}

#Preview {
    ProspectsView(filter: .none)
        .modelContainer(for: Prospect.self)
}
