//
//  ContentView.swift
//  MVVMExample
//
//  Created by Eric on 17/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ProductListViewModel(webservice: Webservice())
    
    var body: some View {
        List(vm.products) { product in
            Text(product.title)
        }
        .task {
            await vm.populateProducts()
        }
    }
}

#Preview {
    ContentView()
}
