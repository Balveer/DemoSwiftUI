//
//  HomeView.swift
//  TabbarDemo
//
//

import SwiftUI

struct HomeView: View {

    @State var productArray:[Product] = []
    @State private var showLoader: Bool = false
    @ObservedObject private var favObj:FavObj = FavObj()

    var body: some View {

        NavigationView {
            List(productArray, id:\.id){ planet in
                NavigationLink(destination: ProductDetailView(selectedTitle: planet.title ?? "", selectedPrice: "\(planet.price?[0].value ?? 0.0)", selectedImage: planet.imageURL ?? "",selectedRating:  "", selectID: planet.id ?? ""),
                    label: {
                        HStack{
                            AsyncImage(url: URL(string: planet.imageURL ?? "")) { image in
                                       image
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                   } placeholder: {
                                       Image(systemName: "photo")
                                           .imageScale(.large)
                                           .foregroundColor(.gray)
                                   }                           .frame(width: 50.0, height: 50.0)

                            VStack {
                                Text("ProductName:\(planet.title ?? "Title")")
                            .font(.system(size: 20, weight: .light, design: .default))
                            Spacer()
                                Text("Price:\(planet.price?[0].value ?? 0.0)")
                                    .font(.system(size: 20, weight: .light, design: .default))
                            }.padding()
                             Spacer()
                            Button {
                                print("Image tapped!")
                            } label: {
                                Text("Cart")
                                .font(.system(size: 20, weight: .light, design: .default))
                                
                            }
                            .frame(width: 80, height: 30.0)
                            .background(Color.blue)

                        }
                })

            }.navigationTitle("Product List")
            .environmentObject(favObj)
        }
        .onAppear(perform: {

            Api().loadData { (productss) in
                self.productArray = productss
                DispatchQueue.main.async {
                print(self.productArray)
                }

            }

        })

  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


